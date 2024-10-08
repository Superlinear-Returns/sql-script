-- 測試假資料/ Product
INSERT INTO PRODUCT (PRODUCT_NAME, PRICE, DESCRIPTION, CATEGORY, CREATE_TIME, UPDATE_TIME)
VALUES
('筆記型電腦', 30000, '高效能筆記型電腦', 'ELECTRICS', NOW(), NOW()),
('智慧型手機', 15000, '最新款智慧型手機', '電子產品', NOW(), NOW()),
('咖啡機', 3000, '全自動咖啡機', 'APPLIANCES', NOW(), NOW()),
('耳機', 5000, '降噪耳機', 'ACCESSORIES', NOW(), NOW()),
('遊戲主機', 10000, '次世代遊戲主機', 'ENTERTAINMENT', NOW(), NOW());

INSERT INTO CART (CART_ID, USER_ID, PRODUCT_ID, QUANTITY)
VALUES
(1, 1, 1, 2),
(2, 2, 3, 1),
(3, 3, 4, 3),
(4, 1, 2, 1),
(5, 4, 5, 1);

INSERT INTO PRODUCT_IMAGE (PRODUCT_ID, IMAGE_URL, IMAGE_TYPE, IMAGE_SORT, CREATE_TIME, UPDATE_TIME)
VALUES
(1, 'https://example.com/images/laptop.jpg', 'jpg', 1, NOW(), NOW()),
(2, 'https://example.com/images/smartphone.jpg', 'jpg', 1, NOW(), NOW()),
(3, 'https://example.com/images/coffeemaker.jpg', 'jpg', 1, NOW(), NOW()),
(4, 'https://example.com/images/headphones.jpg', 'jpg', 1, NOW(), NOW()),
(5, 'https://example.com/images/gamingconsole.jpg', 'jpg', 1, NOW(), NOW());

INSERT INTO PRODUCT_DETAIL (PRODUCT_ID, SPECIFICATION, ADDITIONAL_CATEGORIES, CREATE_TIME, UPDATE_TIME)
VALUES
(1, '16GB 記憶體, 512GB SSD', '筆記型電腦', NOW(), NOW()),
(1, '32GB 記憶體, 1TB SSD', '筆記型電腦', NOW(), NOW()),
(2, '128GB 內存, 6GB RAM', '智慧型手機', NOW(), NOW()),
(3, '全自動模式, 1L 水箱', '廚房用品', NOW(), NOW()),
(3, '全自動模式, 3L 水箱', '廚房用品', NOW(), NOW()),
(4, '主動降噪, 無線', '音響設備', NOW(), NOW()),
(5, '4K 螢幕輸出, 支援 VR', '電子娛樂', NOW(), NOW());

INSERT INTO PRODUCT_COMMENT (PRODUCT_ID, USER_ID, COMMENT_RANK, COMMENT_DETAIL, CREATE_TIME, UPDATE_TIME)
VALUES
(1, 1, 5, '這台筆記型電腦效能非常好！', NOW(), NOW()),
(2, 2, 4, '手機螢幕解析度很高，值得推薦。', NOW(), NOW()),
(3, 3, 5, '咖啡機很方便操作，咖啡很好喝。', NOW(), NOW()),
(4, 4, 3, '耳機音質不錯，但佩戴時間久了有點不舒服。', NOW(), NOW()),
(5, 5, 5, '遊戲主機的畫質和速度都很棒，非常滿意！', NOW(), NOW());

