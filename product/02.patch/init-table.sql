-- 創建模式
CREATE SCHEMA IF NOT EXISTS SPL_PRODUCT DEFAULT CHARACTER SET UTF8MB4 COLLATE UTF8MB4_UNICODE_CI;
use SPL_PRODUCT;

DROP TABLE IF EXISTS SPL_PRODUCT.PRODUCT;
CREATE TABLE PRODUCT (
    PRODUCT_ID BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(100) NOT NULL,
    PRICE DECIMAL(10, 2) NOT NULL,
    DESCRIPTION VARCHAR(1000) NOT NULL,
    CATEGORY VARCHAR(50) NOT NULL,
    CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS SPL_PRODUCT.PRODUCT_DETAIL;
CREATE TABLE PRODUCT_DETAIL (
    PRODUCT_DETAIL_ID BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PRODUCT_ID BIGINT UNSIGNED NOT NULL,
    SPECIFICATION VARCHAR(50),
    ADDITIONAL_CATEGORIES VARCHAR(50),
    CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS SPL_PRODUCT.PRODUCT_IMAGE;
CREATE TABLE PRODUCT_IMAGE (
    PRODUCT_IMAGE_ID BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PRODUCT_ID BIGINT UNSIGNED NOT NULL,
    IMAGE_URL VARCHAR(255) NOT NULL,
    IMAGE_TYPE VARCHAR(10) COMMENT 'MAIN: 主圖, ADDITIONAL: 附圖',
    IMAGE_SORT INT,
    CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS SPL_PRODUCT.CART;
CREATE TABLE CART (
    CART_ID BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    USER_ID BIGINT UNSIGNED NOT NULL,
    PRODUCT_ID BIGINT UNSIGNED NOT NULL,
    QUANTITY INT UNSIGNED NOT NULL
);

DROP TABLE IF EXISTS SPL_PRODUCT.PRODUCT_COMMENT;
CREATE TABLE PRODUCT_COMMENT (
    PRODUCT_COMMENT_ID BIGINT UNSIGNED  AUTO_INCREMENT PRIMARY KEY,
    PRODUCT_ID BIGINT UNSIGNED NOT NULL,
    USER_ID BIGINT UNSIGNED NOT NULL,
    COMMENT_RANK INT UNSIGNED NOT NULL,
    COMMENT_DETAIL VARCHAR(1000) NOT NULL,
    CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);