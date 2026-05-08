-- emoji-filter.lua
-- Pandoc Lua filter for XeLaTeX: envuelve caracteres especiales no cubiertos
-- por las fuentes tipográficas habituales en comandos \emoji{} y \symbolsii{}.
-- Uso: pandoc ... --lua-filter=emoji-filter.lua

local function char_font(cp)
  -- Noto Sans Symbols2: Geometric Shapes Extended (U+1F7E0-U+1F7FF)
  if cp >= 0x1F7E0 and cp <= 0x1F7FF then
    return 'symbolsii'
  -- Symbola: bloques de símbolos que Roboto/DejaVu no incluyen
  elseif (cp >= 0x2190 and cp <= 0x21FF)       -- Arrows
      or (cp >= 0x2200 and cp <= 0x22FF)       -- Mathematical Operators
      or (cp >= 0x2300 and cp <= 0x23FF)       -- Miscellaneous Technical
      or (cp >= 0x2460 and cp <= 0x24FF)       -- Enclosed Alphanumerics
      or (cp >= 0x2500 and cp <= 0x27BF)       -- Box Drawing / Dingbats
      or (cp >= 0x27F0 and cp <= 0x27FF)       -- Supplemental Arrows-A
      or (cp >= 0x2900 and cp <= 0x29FF)       -- Supplemental Arrows-B
      or (cp >= 0x2A00 and cp <= 0x2AFF)       -- Supplemental Math Operators
      or (cp >= 0x2B00 and cp <= 0x2BFF)       -- Misc Symbols and Arrows
      or (cp >= 0x1F300 and cp <= 0x1FFFD)     -- Emoji blocks
      or cp == 0x200D or cp == 0xFE0F then     -- ZWJ, Variation Selector-16
    return 'emoji'
  else
    return nil
  end
end

local function split_special(text)
  local parts, buf, special_buf = {}, {}, {}
  local current_font

  for _, cp in utf8.codes(text) do
    local font = char_font(cp)
    if font then
      if font ~= current_font and #buf > 0 then
        table.insert(parts, {text = table.concat(buf), cmd = nil})
        buf = {}
      end
      if font ~= current_font and #special_buf > 0 then
        table.insert(parts, {text = table.concat(special_buf), cmd = current_font})
        special_buf = {}
      end
      current_font = font
      table.insert(special_buf, utf8.char(cp))
    else
      if current_font and #special_buf > 0 then
        table.insert(parts, {text = table.concat(special_buf), cmd = current_font})
        special_buf = {}
      end
      current_font = nil
      table.insert(buf, utf8.char(cp))
    end
  end

  if #buf > 0 then
    table.insert(parts, {text = table.concat(buf), cmd = nil})
  end
  if #special_buf > 0 then
    table.insert(parts, {text = table.concat(special_buf), cmd = current_font})
  end

  return parts
end

function Str(el)
  local parts = split_special(el.text)
  if #parts == 1 and parts[1].cmd == nil then
    return nil  -- sin caracteres especiales, no tocar
  end

  local result = {}
  for _, part in ipairs(parts) do
    if part.cmd then
      table.insert(result, pandoc.RawInline('latex', '\\' .. part.cmd .. '{' .. part.text .. '}'))
    else
      table.insert(result, pandoc.Str(part.text))
    end
  end
  return result
end
