import mysql.connector
import pandas as pd

# Connect MySQL
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sara1289",
    database="ecommers_return"
)

print("Connected Successfully!")

# Read data
query = "SELECT * FROM orders"

df = pd.read_sql(query, conn)

print(df)

# Save cleaned file
df.to_csv("data.csv", index=False)

conn.close()