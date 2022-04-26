CREATE TABLE customer
(
       id             NUMBER(6) CONSTRAINT customer_id_nn NOT NULL,
       name           VARCHAR2(25)
);

CREATE TABLE purchase
(
       number         NUMBER(6) CONSTRAINT purchase_number_nn NOT NULL,
       date           DATE DEFAULT SYSDATE CONSTRAINT purchase_date_nn NOT NULL,
       price         NUMBER(8,2) CONSTRAINT purchase_price_nn NOT NULL,
                      CONSTRAINT purchase_price_min CHECK (price>0)
);

CREATE TABLE product
(
       barcode         NUMBER(6) CONSTRAINT product_barcode_nn NOT NULL,
       name           VARCHAR2(25) CONSTRAINT product_name_nn NOT NULL,
       quantity         NUMBER(6) CONSTRAINT product_quantity_nn NOT NULL,
                      CONSTRAINT product_quantity_min CHECK (quantity>0)
       cost         NUMBER(8,2) CONSTRAINT product_cost_nn NOT NULL,
                      CONSTRAINT product_cost_min CHECK (cost>0)
);

CREATE TABLE product_x_purchase
(
       purchase_number         NUMBER(6),
       product_barcode         NUMBER(6)
);