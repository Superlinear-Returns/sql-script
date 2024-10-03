-- 創建模式
CREATE SCHEMA IF NOT EXISTS ORDER_MODULE;
USE ORDER_MODULE;

-- 創建表格
CREATE TABLE ORDERS (
    ORDER_ID VARCHAR(45) PRIMARY KEY,
    CUSTOMER_ID VARCHAR(30),
    ORDER_DATE DATE,
    SALER_ID VARCHAR(30),
    ORDER_STATUS ENUM('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    TOTAL_AMOUNT DECIMAL(10, 2)
);

CREATE TABLE ORDERS_DETAIL (
    ORDER_DETAIL_ID VARCHAR(45) PRIMARY KEY,
    ORDER_ID VARCHAR(45),
    PRODUCT_ID BIGINT,
    PRODUCT_QUANTITY INT,
    UNIT_PRICE DECIMAL(10, 2)
);

CREATE TABLE ORDER_EVAL (
    ORDER_EVAL_ID VARCHAR(45) PRIMARY KEY,
    ORDER_ID VARCHAR(45),
    RATING INT,
    COMMENT TEXT,
    EVAL_DATE DATE
);

CREATE TABLE SALER (
    SALER_ID VARCHAR(30) PRIMARY KEY,
    SALER_NAME VARCHAR(50),
    SALER_EMAIL VARCHAR(100),
    SALER_PHONE_NUMBER VARCHAR(15)
);

CREATE TABLE RETURN_RECORD (
    RETURN_RECORD_ID VARCHAR(30) PRIMARY KEY,
    ORDER_ID VARCHAR(45),
    RETURN_DATE DATE,
    RETURN_REASON TEXT,
    RETURN_STATUS ENUM('Pending', 'Approved', 'Rejected', 'Completed') DEFAULT 'Pending'
);
