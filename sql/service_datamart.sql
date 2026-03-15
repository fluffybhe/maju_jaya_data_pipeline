
SELECT
YEAR(a.service_date) AS periode,
a.vin,
c.name AS customer_name,
addr.address,
COUNT(a.service_ticket) AS count_service,
CASE
WHEN COUNT(a.service_ticket) > 10 THEN 'HIGH'
WHEN COUNT(a.service_ticket) BETWEEN 5 AND 10 THEN 'MED'
ELSE 'LOW'
END AS priority
FROM after_sales_raw a
LEFT JOIN customers_raw c
ON a.customer_id = c.id
LEFT JOIN customer_addresses_raw addr
ON a.customer_id = addr.customer_id
GROUP BY periode,a.vin,customer_name,address;
