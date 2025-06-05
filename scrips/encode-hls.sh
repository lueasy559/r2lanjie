ffmpeg -i ../[your-video].mp4 \
  -c:v libx264 -profile:v high -level 4.1 -preset slow \
  -crf 20 -g 48 -sc_threshold 0 \
  -c:a aac -b:a 128k \
  -vf "scale=w=1920:h=1080:force_original_aspect_ratio=decrease" \
  -hls_time 6 -hls_playlist_type vod \
  -hls_segment_filename "out_%03d.ts" \
  [your-video].m3u8
