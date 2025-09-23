import sys
import csv
import unicodedata
import re
import boto3  # AWS SDK for Python

# Show Python version
print("Python version:", sys.version)

# Work with csv
data = [["name", "age"], ["Alice", "30"], ["Bob", "25"]]
with open("sample.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerows(data)
print("CSV written.")

# Unicode normalization
text = "café"
normalized = unicodedata.normalize("NFC", text)
print("Normalized:", normalized)

# Regex example
pattern = re.compile(r"\d+")
print("Regex match on 'Age 30':", pattern.findall("Age 30"))

# Boto3 example (you don’t need AWS creds for this call)
s3 = boto3.client("s3", region_name="us-east-1")
print("Boto3 client created:", s3.meta.region_name)