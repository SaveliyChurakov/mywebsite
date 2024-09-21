FROM ubuntu:latest

RUN apt update -y
RUN apt install nano -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN apt install python3-venv -y
RUN pip install Flask --break-system-packages

COPY . ./mywebsite

WORKDIR /mywebsite

ENTRYPOINT ["python3"]

CMD ["app.py"]
