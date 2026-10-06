import pandas as pd
import psycopg2
import matplotlib.pyplot as plt

connection = psycopg2.connect(
    host="localhost",
    database="sales_analytics",
    user="postgres",
    password="YOUR_PASSWORD",
    port="5432"
)

query = """
SELECT *
FROM vw_monthly_sales
ORDER BY month;
"""

df = pd.read_sql(query, connection)

print(df)

plt.figure(figsize=(10,5))

plt.plot(
    df["month"],
    df["revenue"]
)

plt.title("Monthly Revenue")
plt.xlabel("Month")
plt.ylabel("Revenue")

plt.xticks(rotation=45)

plt.tight_layout()

plt.show()

connection.close()