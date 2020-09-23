# Licence-Plate

Being inside Docker container, you are able to run licence plate detection using YOLOv4.
All files **exept weight**s are already prepared.

## To run licence plate detection from image *(while you're inside Docker container)*:
1. Download weights (```licence-plate.weights```) to your local machine  and put them into ```Docker-Darknet/Share/licence-plate``` directory. File will be reachable from within container.<br>
```https://drive.google.com/file/d/1AhN_UZWblCMLygPeI7qBDqv3FNnLC6YZ/view?usp=sharing```
2. Open terminal inside container 
```http://127.0.0.1:1306/terminals/1```
3. And type in 
```
cd /home/Share
python licence-plate-detect.py
```
Use flag ```--img``` to point your own image. It is reccomended to use ```/Share``` folder to be able to add files inside container.<br>

---
**Example**
Drag and drop image you want to use (```my_image.jpg```) into ```Docker-Darknet/Share``` on your local machine. File immediately should be visible inside Docker container (```http://127.0.0.1:1306/tree/Share```). To detect licence plate on this image type
```python licence-plate-detect.py --img /home/Share/my_image.jpg```

4. Detection is saved as ```/home/Share/prediction.jpg```
