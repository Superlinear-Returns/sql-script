USE ORDER_MODULE;
-- 插入假數據
INSERT INTO CUSTOMER VALUES
('CUST001', '張三', 'zhangsan@email.com', '0912345678', '台北市中山區中山北路1號'),
('CUST002', '李四', 'lisi@email.com', '0923456789', '台中市西屯區文心路100號'),
('CUST003', '王五', 'wangwu@email.com', '0934567890', '高雄市前金區中正路200號');

INSERT INTO SALER VALUES
('SALER001', '商家A', 'salera@email.com', '0956789012'),
('SALER002', '商家B', 'salerb@email.com', '0967890123'),
('SALER003', '商家C', 'salerc@email.com', '0978901234');

INSERT INTO PRODUCT (product_name, price, description, category) VALUES
('iPhone 13', 26900.00, 'Apple最新智能手機，搭載A15仿生晶片', '智能手機'),
('Samsung Galaxy S21', 24900.00, 'Samsung旗艦智能手機，具備優秀的相機性能', '智能手機'),
('華碩 ROG 電競筆電', 39900.00, '高性能電競筆記型電腦，搭載最新GPU', '筆記型電腦');

INSERT INTO ORDERS VALUES
('ORD001', 'CUST001', '2024-10-01', 'SALER001', 'Delivered', 26900.00),
('ORD002', 'CUST002', '2024-10-02', 'SALER002', 'Processing', 24900.00),
('ORD003', 'CUST003', '2024-10-03', 'SALER003', 'Shipped', 39900.00);

INSERT INTO ORDERS_DETAIL VALUES
('ORDD001', 'ORD001', 1, 1, 26900.00),
('ORDD002', 'ORD002', 2, 1, 24900.00),
('ORDD003', 'ORD003', 3, 1, 39900.00);

INSERT INTO ORDER_EVAL VALUES
('EVAL001', 'ORD001', 5, '商品很棒，送貨速度快', '2024-10-05'),
('EVAL002', 'ORD002', 4, '商品不錯，但包裝可以再改進', '2024-10-07');

INSERT INTO RETURN_RECORD VALUES
('RET001', 'ORD003', '2024-10-10', '商品與描述不符', 'Pending');