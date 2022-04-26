SELECT c.customer_name, product.product_name, COUNT(purchase.purchase_id) Amount FROM purchase
INNER JOIN product_x_purchase pxp ON purchase.purchase_id = pxp.purchase_number
INNER JOIN product ON pxp.product_barcode = product.barcode
INNER JOIN customer c ON purchase.client_id = c.customer_id
GROUP BY c.customer_name, product.product_name
ORDER BY c.customer_name;

-- Amount: Hermione compro 4 libros de Harry Potter pero el producto tiene el mismo id.
