FROM python:3

RUN apt-get update && apt-get install make
RUN apt install build-essential -y --no-install-recommends

ENV ROOT=/home

WORKDIR $ROOT
RUN git clone https://github.com/pjreddie/darknet
WORKDIR darknet/

#RUN sed -i 's/OPENCV=0/OPENCV=1/' Makefile
RUN make
WORKDIR ..

RUN pip install --upgrade jupyter

WORKDIR ..
RUN echo 'jupyter notebook --no-browser --ip=0.0.0.0 --port=1306 --NotebookApp.token="password" --allow-root --notebook-dir="." > "jupyter_log.txt" 2>&1 &' > run_jupyter.sh
RUN chmod +x run_jupyter.sh

RUN pip install --upgrade matplotlib numpy
