mkdir $HOME/.cache/walaura
img=$HOME/.cache/walaura/tmp.jpeg

while true; do
  rm $img
  scrot -F "$img"
  asusctl aura static -c $(magick $img -scale 4x4! -format '%[hex:p{0,0}]' info:)
  sleep 0.05
done
