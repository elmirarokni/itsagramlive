FROM sampeka/ffmpeg-python:3.6.5

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY requirements.txt /usr/src/app/
ONBUILD RUN pip install --no-cache-dir -r requirements.txt

ONBUILD COPY . /usr/src/app

ENTRYPOINT ["python", "live_broadcast_ffmpeg.py -u postperpet -p UPryZD3SVizGF9x -f ./aa1300c95411bf4df0a0025daa7ac22945115644-480p.mp4"]
