# syntax=docker/dockerfile:1

FROM python:3.9

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

EXPOSE 8501

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["streamlit", "run"]

CMD ["app.py"]