ffmpeg -framerate 25 -video_size 1600x900 -f x11grab -draw_mouse 1 -show_region 1 -region_border 3 -i :0.0 -f alsa -ac 2 -i pulse -vcodec libx264 -crf 0 -preset medium -acodec libmp3lame output.mp4
