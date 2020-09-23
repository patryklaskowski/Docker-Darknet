# Licence-Plate

Being inside Docker container, you are able to run licence plate detection using YOLOv4.
All files **exept weight**s are already prepared.

## To run licence plate detection from image *(while you're inside Docker container)*:
1. Download weights (```licence-plate.weights```) to your local machine  and put them into ```./Docker-Darknet/Share/licence-plate``` directory. File will be reachable from within container.<br>
```https://drive.google.com/file/d/1AhN_UZWblCMLygPeI7qBDqv3FNnLC6YZ/view?usp=sharing```
2. Open terminal inside container 
```http://127.0.0.1:1306/terminals/1```
3. And type in 
```
cd /home/Share
python licence-plate-detect.py
```
4. Detection is saved as ```/home/Share/prediction.jpg```
