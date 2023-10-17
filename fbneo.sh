!/bin/bash
curl -c ./cookie.txt -s -L "https://drive.google.com/uc?export=download&id=SEU_ID_DE_ARQUIVO" > /dev/null
curl -Lb ./cookie.txt "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie.txt`&id=1KbedyA3lqOw78cQ0Fap3gv-7G9E7Ouqr" -o "/userdata/roms/fbneo/fbneo.7z"
rm cookie.txt
7z x "/userdata/roms/fbneo/fbneo.7z" -o"/userdata/roms/fbneo/"
mv  /userdata/roms/fbneo/fbneo/* /userdata/roms/fbneo/
rm /userdata/roms/fbneo/fbneo.7z
batocera-save-overlay
