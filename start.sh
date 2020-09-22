dash(){
echo -e "\n-------------------------------\n"
}

dash

CURR=$(pwd)
SHARE=/Share-Folder
DOCKERIMAGE=patryklaskowski/darknet:latest


ID=$(docker run -itd -v "$CURR""$SHARE":/home"$SHARE" -p 1306:1306 "$DOCKERIMAGE")
echo Container ID: "$ID"

docker exec "$ID" sh run_jupyter.sh
sleep 3
open -a "google chrome" "http://127.0.0.1:1306/?token=password"

dash
read -p "Press ENTER to close container."
dash

docker container stop "$ID"

dash
echo -e "Conainer closed."
dash
exit 1
