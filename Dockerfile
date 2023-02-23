# Dockerfile, docker image, docker container
FROM python:3.11

WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

# python yolo_video.py --yolo yolo-coco
CMD ["python","yolo_video.py","--yolo","yolo-coco"]