
import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("mysql+pymysql://root:root@mysql/maju_jaya_dw")

df = pd.read_sql("SELECT * FROM customers_raw", engine)

df["dob"] = pd.to_datetime(df["dob"], errors="coerce")
df.loc[df["dob"] < "1920-01-01","dob"] = None

df["customer_type"] = df["name"].apply(
    lambda x: "CORPORATE" if "PT" in str(x).upper() else "INDIVIDUAL"
)

df.to_sql(
    "customers_clean",
    engine,
    if_exists="replace",
    index=False
)

print("Cleaning finished")
