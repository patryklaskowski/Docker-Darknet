# Docker-Darknet
[![made-with-python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
[![made-with-docker](https://img.shields.io/badge/Made%20with-Docker-1f425f.svg)](https://www.docker.com/)
[![made-with-jupyter](https://img.shields.io/badge/Made%20with-Jupyter-1f425f.svg)](https://jupyter.org/)
<br>
Doker with darknet architecture and jupyter notebook.

## 1. To run:
```
git clone https://github.com/patryklaskowski/Docker-Darknet
cd Docker-Darknet
chmod +x start.sh
./start.sh
```
Above code will clone repository and run Docker container with Jupyter Notebook inside. By default port 1306 is used.
Script automates whole process creating container using DockerHub and opening Google Chrome on ```http://127.0.0.1:1306```.

------

## 2. To use YOLOv4:
Make sure first step is done. Go to ```/Share``` directory to see more details in README.
