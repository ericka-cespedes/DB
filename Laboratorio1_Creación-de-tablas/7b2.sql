ALTER TABLE customer
      ADD CONSTRAINT pk_customer PRIMARY KEY(id)
      USING INDEX
      TABLESPACE cu_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE purchase
      ADD CONSTRAINT pk_purchase PRIMARY KEY(number)
      USING INDEX
      TABLESPACE cu_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE purchase
       ADD CONSTRAINT fk_purchase_client_id FOREIGN KEY (id) REFERENCES customer(id);

ALTER TABLE product
      ADD CONSTRAINT pk_product PRIMARY KEY(barcode)
      USING INDEX
      TABLESPACE cu_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE product_x_purchase
      ADD CONSTRAINT pk_customer PRIMARY KEY(purchase_number)
      USING INDEX
      TABLESPACE cu_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE product_x_purchase
      ADD CONSTRAINT pk_customer PRIMARY KEY(product_barcode)
      USING INDEX
      TABLESPACE cu_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE product_x_purchase
       ADD CONSTRAINT fk_product_x_purchase_purchase_number FOREIGN KEY (number) REFERENCES purchase(number);

ALTER TABLE product_x_purchase
       ADD CONSTRAINT fk_product_x_purchase_product_barcode FOREIGN KEY (barcode) REFERENCES product(barcode);