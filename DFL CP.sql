-- Creation of Tables using SQL language

CREATE TABLE CUSTOMER (
    Customer_id (VARCHAR(20)) CONSTRAINT customer_pk PRIMARY KEY,
    Customer_Name (VARCHAR(20)) CONSTRAINT customer_nn NOT NULL,
    Customer_tel NUMBER,
);

CREATE TABLE PRODUCT (
    Product_id (VARCHAR(20)) CONSTRAINT product_pk PRIMARY KEY,
    Product_Name (VARCHAR(20)) CONSTRAINT product_nn NOT NULL,
    Price NUMBER CONSTRAINT price_positive CHECK (Price>0),
);

CREATE TABLE ORDERS (
    Customer_id (VARCHAR(20)),
    Product_id (VARCHAR(20)),
    Quantity NUMBER,
    Total_amount Number,
    CONSTRAINT customer_fk FOREIGN KEY (Customer_id) REFERENCES CUSTOMER (Customer_id),
    CONSTRAINT product_fk FOREIGN KEY (Product_id) REFERENCES PRODUCT (Product_id),
);

-- Adding a column Category (VARCHAR2(20)) to the PRODUCT table :

ALTER TABLE PRODUCT ADD Category (VARCHAR2(20));

--Adding a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.
ALTER TABLE ORDERS ADD OrderDate (DATE) DEFAULT SYSDATE();
