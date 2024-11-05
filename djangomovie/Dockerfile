FROM python:3.10-slim
WORKDIR /app
RUN apt-get update
RUN apt-get install gcc default-libmysqlclient-dev -y
RUN pip install --upgrade pip
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["sh", "start_django.sh"]
