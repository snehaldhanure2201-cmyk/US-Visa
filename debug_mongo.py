from pymongo import MongoClient
import certifi

uri = "mongodb+srv://snehalj2201_db_user:snehalj2201_db_user@cluster0.ahfua0s.mongodb.net/?appName=Cluster0"

client = MongoClient(uri, tlsCAFile=certifi.where())

db = client["US_VISA"]
collection = db["visa_data"]

data = list(collection.find())

print("Number of records:", len(data))