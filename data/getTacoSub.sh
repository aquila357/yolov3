filename="cocoTacoSub.rar"
fileid="1rwkQNmswfBtLkonqU3x3tufQz31gy0HS"  # coco.zip

# Download from Google Drive, accepting presented query
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
rm ./cookie

# Unzip
unzip -q ${filename}  # for coco_do.zip
