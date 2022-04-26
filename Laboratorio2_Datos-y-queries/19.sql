-- Compras cliente 1 (5)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(1, 1, to_date('03/09/2010','DD/MM/YYYY'), 15);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(1, 1);
INSERT INTO purchase
VALUES(2, 1, to_date('04/09/2011','DD/MM/YYYY'), 12);
INSERT INTO product_x_purchase
VALUES(2, 9);
INSERT INTO purchase
VALUES(3, 1, to_date('03/04/2012','DD/MM/YYYY'), 15);
INSERT INTO product_x_purchase
VALUES(3, 1);
INSERT INTO purchase
VALUES(4, 1, to_date('09/03/2013','DD/MM/YYYY'), 15);
INSERT INTO product_x_purchase
VALUES(4, 1);
INSERT INTO purchase
VALUES(5, 1, to_date('04/09/2014','DD/MM/YYYY'), 15);
INSERT INTO product_x_purchase
VALUES(5, 1);
-- Compras cliente 2 (5)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(6, 2, to_date('19/04/2010','DD/MM/YYYY'), 15);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(6, 1);
INSERT INTO purchase
VALUES(7, 2, to_date('21/10/2005','DD/MM/YYYY'), 12);
INSERT INTO product_x_purchase
VALUES(7, 9);
INSERT INTO purchase
VALUES(8, 2, to_date('10/06/2018','DD/MM/YYYY'), 100);
INSERT INTO product_x_purchase
VALUES(8, 2);
INSERT INTO purchase
VALUES(9, 2, to_date('10/10/2018','DD/MM/YYYY'), 40);
INSERT INTO product_x_purchase
VALUES(9, 6);
INSERT INTO purchase
VALUES(10, 2, to_date('03/12/2016','DD/MM/YYYY'), 1000);
INSERT INTO product_x_purchase
VALUES(10, 11);
-- Compras cliente 3 (4)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(11, 3, to_date('15/03/2017','DD/MM/YYYY'), 7);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(11, 3);
INSERT INTO purchase
VALUES(12, 3, to_date('20/12/2017','DD/MM/YYYY'), 10);
INSERT INTO product_x_purchase
VALUES(12, 10);
INSERT INTO purchase
VALUES(13, 3, to_date('20/03/2017','DD/MM/YYYY'), 25);
INSERT INTO product_x_purchase
VALUES(13, 12);
INSERT INTO purchase
VALUES(14, 3, to_date('15/01/2019','DD/MM/YYYY'), 1000);
INSERT INTO product_x_purchase
VALUES(14, 11);
-- Compras cliente 4 (3)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(15, 4, to_date('15/11/2017','DD/MM/YYYY'), 1000);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(15, 11);
INSERT INTO purchase
VALUES(16, 4, to_date('20/12/2017','DD/MM/YYYY'), 10);
INSERT INTO product_x_purchase
VALUES(16, 5);
INSERT INTO purchase
VALUES(17, 4, to_date('22/12/2017','DD/MM/YYYY'), 20);
INSERT INTO product_x_purchase
VALUES(17, 8);
-- Compras cliente 5 (5)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(18, 5, to_date('19/05/2005','DD/MM/YYYY'), 15);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(18, 1);
INSERT INTO purchase
VALUES(19, 5, to_date('02/12/2017','DD/MM/YYYY'), 10);
INSERT INTO product_x_purchase
VALUES(19, 4);
INSERT INTO purchase
VALUES(20, 5, to_date('20/06/2018','DD/MM/YYYY'), 40);
INSERT INTO product_x_purchase
VALUES(20, 6);
INSERT INTO purchase
VALUES(21, 5, to_date('05/08/2018','DD/MM/YYYY'), 12);
INSERT INTO product_x_purchase
VALUES(21, 9);
INSERT INTO purchase
VALUES(22, 5, to_date('10/02/2018','DD/MM/YYYY'), 25);
INSERT INTO product_x_purchase
VALUES(22, 12);
-- Compras cliente 6 (1)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(23, 6, to_date('10/12/2017','DD/MM/YYYY'), 10);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(23, 10);
-- Compras cliente 7 (2)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(24, 7, to_date('08/06/2010','DD/MM/YYYY'), 100);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(24, 2);
INSERT INTO purchase
VALUES(25, 7, to_date('02/11/2015','DD/MM/YYYY'), 20);
INSERT INTO product_x_purchase
VALUES(25, 7);
-- Compras cliente 8 (1)
INSERT INTO purchase(purchase_id, client_id, purchase_date, price)
VALUES(26, 8, to_date('15/03/2019','DD/MM/YYYY'), 20);
INSERT INTO product_x_purchase(purchase_number, product_barcode)
VALUES(26, 7);
