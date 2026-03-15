# Maju Jaya Data Pipeline

## Project Overview

This project builds a simple **data pipeline** to process customer and sales data for **PT Maju Jaya**.

The pipeline:

* Ingests raw CSV data
* Performs data cleaning using Python
* Stores the data in a data warehouse
* Creates a sales data mart for analytics

The goal of this project is to demonstrate a **basic end-to-end data engineering workflow**, including ingestion, transformation, and data modeling.

---

## Tech Stack

* Python
* SQL
* Docker
* PostgreSQL
* Data Warehouse (Star Schema)

---

## Data Pipeline Architecture

The pipeline follows these steps:

1. Raw data ingestion from CSV files
2. Data cleaning and preprocessing using Python
3. Loading cleaned data into a data warehouse
4. Creating analytical tables (data mart) for reporting

---



---

## Project Structure

```
maju_jaya_data_pipeline
│
├── data
│   └── customer_addresses_20260301.csv
│
├── scripts
│   ├── ingest_customer_address.py
│   └── clean_data.py
│
├── sql
│   ├── sales_datamart.sql
│   └── service_datamart.sql
│
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── README.md
```

---

## Pipeline Steps

### 1. Data Ingestion

`ingest_customer_address.py` loads raw CSV data into the database.

### 2. Data Cleaning

`clean_data.py` processes the raw data and prepares it for the warehouse.

### 3. Data Warehouse

`sales_datamart.sql` creates warehouse tables.

### 4. Data Mart

`service_datamart.sql` generates analytical tables used for reporting and insights.

---

## How to Run the Project

### 1. Clone Repository

```
git clone https://github.com/fluffybhe/maju_jaya_data_pipeline.git
```

### 2. Move into Project Folder

```
cd maju_jaya_data_pipeline
```

### 3. Run the Pipeline using Docker

```
docker-compose up --build
```

---

## Author

**Febhe Maulita May Pramasta**

This project is part of my **Data Engineering Portfolio**, demonstrating basic data pipeline development using **Python, SQL, and Docker**.

