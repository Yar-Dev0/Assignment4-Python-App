FROM python:3.10.13-alpine

LABEL name="Python Application" \   
     maintainer="Ahmed Yar <ahmed.yar@outlook.com>" \
     summary="A Sample Python application"

WORKDIR /app

COPY requirements.txt .

RUN pip install -r 'requirements.txt'

EXPOSE 8080

COPY . ./

CMD [ "python", "./app.py" ]