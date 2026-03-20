# Hum Python 3.10-slim-bullseye use karenge, buster purana ho gaya hai
FROM python:3.10-slim-bullseye

# Update aur AWS CLI install karne ka naya stable tarika
RUN apt-get update -y && apt-get install -y awscli && apt-get clean

# Project folder set karein
WORKDIR /app

# Saari files copy karein
COPY . /app

# Requirements install karein
RUN pip install --no-cache-dir -r requirements.txt

# App chalane ki command
CMD ["python3", "app.py"]