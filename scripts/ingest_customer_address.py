
import pandas as pd
import glob
import os
from sqlalchemy import create_engine

DB_USER = "root"
DB_PASS = "root"
DB_HOST = "mysql"
DB_NAME = "maju_jaya_dw"

engine = create_engine(f"mysql+pymysql://{DB_USER}:{DB_PASS}@{DB_HOST}/{DB_NAME}")

DATA_FOLDER = "/data"

def ingest():
    files = glob.glob(os.path.join(DATA_FOLDER,"customer_addresses_*.csv"))

    for file in files:
        print(f"Processing {file}")
        df = pd.read_csv(file)

        df.to_sql(
            name="customer_addresses_raw",
            con=engine,
            if_exists="append",
            index=False
        )

        print("Inserted to MySQL")

if __name__ == "__main__":
    ingest()
