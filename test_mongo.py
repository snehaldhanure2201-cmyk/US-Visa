from pymongo import MongoClient
import certifi

uri = "mongodb+srv://snehalj2201_db_user:snehalj2201_db_user@cluster0.ahfua0s.mongodb.net/US_VISA?retryWrites=true&w=majority"

client = MongoClient(uri, tlsCAFile=certifi.where())

db = client["US_VISA"]

print("Collections:", db.list_collection_names())