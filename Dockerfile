
FROM python:3.10

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY scripts ./scripts

CMD ["python","scripts/ingest_customer_address.py"]
