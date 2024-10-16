-- 創建模式
CREATE SCHEMA IF NOT EXISTS ORDER_MODULE;
USE ORDER_MODULE;

-- 創建表格
CREATE TABLE SPL_ORDER (
    ORDER_ID INT UNSIGNED PRIMARY KEY,
    CUSTOMER_ID INT UNSIGNED,
    ORDER_DATE TIMESTAMP,
    SALER_ID INT UNSIGNED,
	ORDER_STATUS TINYINT DEFAULT 0 COMMENT 'PENDING=0, PROCESSING=1, SHIPPED=2, DELIVERED=3, CANCELLED=4',
    TOTAL_AMOUNT DECIMAL(10, 2),
    CREATE_TIME TIMESTAMP,
    UPD_TIME TIMESTAMP
);

CREATE TABLE ORDER_DETAIL (
    ORDER_DETAIL_ID INT UNSIGNED PRIMARY KEY,
    ORDER_ID INT UNSIGNED,
    PRODUCT_ID INT UNSIGNED,
    PRODUCT_QUANTITY INT,
    UNIT_PRICE DECIMAL(10, 2)
);

CREATE TABLE ORDER_EVAL (
    ORDER_EVAL_ID INT UNSIGNED PRIMARY KEY,
    ORDER_ID VARCHAR(45),
    RATING INT,
    ORDER_EVAL_COMMENT VARCHAR(500),
    EVAL_DATE TIMESTAMP
);

CREATE TABLE RETURN_RECORD (
    RETURN_RECORD_ID INT UNSIGNED PRIMARY KEY,
    ORDER_ID INT UNSIGNED,
    RETURN_DATE TIMESTAMP,
    RETURN_REASON TEXT,
    RETURN_STATUS TINYINT DEFAULT 0 COMMENT 'PENDING=0, APPROVED=1, REJECTED=2, COMPLETED=3'
);
