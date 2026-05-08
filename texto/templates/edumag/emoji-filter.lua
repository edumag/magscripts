-- emoji-filter.lua
-- Pandoc Lua filter: envuelve caracteres emoji en \emoji{} para XeLaTeX
-- Uso: pandoc ... --lua-filter=emoji-filter.lua

local function is_emoji_char(cp)
  -- Rangos Unicode de símbolos y emoji no cubiertos por fuentes tipicas
  return cp >= 0x2500 and cp <= 0x27BF      -- Box Drawing, Block Elements, Geometric Shapes, Misc. Symbols, Dingbats
      or cp >= 0x1F300 and cp <= 0x1FFFD    -- Pictographs, Emoticons, Transport, etc.
      or cp == 0x200D                        -- Zero-Width Joiner
      or cp == 0xFE0F                        -- Variation Selector-16
end

local function split_emoji(text)
  local parts, buf, emoji_buf, in_emoji = {}, {}, {}, false

  for _, cp in utf8.codes(text) do
    if is_emoji_char(cp) then
      if not in_emoji and #buf > 0 then
        table.insert(parts, {text = table.concat(buf), is_emoji = false})
        buf = {}
      end
      in_emoji = true
      table.insert(emoji_buf, utf8.char(cp))
    else
      if in_emoji and #emoji_buf > 0 then
        table.insert(parts, {text = table.concat(emoji_buf), is_emoji = true})
        emoji_buf = {}
      end
      in_emoji = false
      table.insert(buf, utf8.char(cp))
    end
  end

  if #buf > 0 then
    table.insert(parts, {text = table.concat(buf), is_emoji = false})
  end
  if #emoji_buf > 0 then
    table.insert(parts, {text = table.concat(emoji_buf), is_emoji = true})
  end

  return parts
end

function Str(el)
  local parts = split_emoji(el.text)
  if #parts == 1 and not parts[1].is_emoji then
    return nil  -- sin emojis, no tocar
  end

  local result = {}
  for _, part in ipairs(parts) do
    if part.is_emoji then
      table.insert(result, pandoc.RawInline('latex', '\\emoji{' .. part.text .. '}'))
    else
      table.insert(result, pandoc.Str(part.text))
    end
  end
  return result
end
