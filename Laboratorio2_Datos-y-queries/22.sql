SELECT c.customer_name, COUNT(purchase.client_id) AMOUNT_OF_PURCHASES FROM purchase
INNER JOIN customer c ON purchase.client_id = c.customer_id
GROUP BY c.customer_name
HAVING COUNT(purchase.client_id) > 3;
