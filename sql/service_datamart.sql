SELECT
YEAR(service_date) AS periode,
a.vin,
c.name AS customer_name,
addr.address,

COUNT(*) AS count_service,

CASE
 WHEN COUNT(*) > 10 THEN 'HIGH'
 WHEN COUNT(*) BETWEEN 5 AND 10 THEN 'MED'
 ELSE 'LOW'
END AS priority

FROM after_sales_raw a

LEFT JOIN customers_clean c
ON a.customer_id = c.id

LEFT JOIN customer_addresses_raw addr
ON a.customer_id = addr.customer_id

GROUP BY
periode,
a.vin,
customer_name,
address;