# Hum Python 3.10-slim use karenge kyunki aap 3.10 par kaam kar rahi hain
FROM python:3.10-slim-buster

# System updates aur agar koi basic tool chahiye ho
RUN apt-get update -y && apt-get install -y awscli

# Project folder set karein
WORKDIR /app

# Saari files ko container ke andar copy karein
COPY . /app

# Requirements install karein
RUN pip install --no-cache-dir -r requirements.txt

# App chalane ki command
CMD ["python3", "app.py"]