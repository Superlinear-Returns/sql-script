USE ORDER_MODULE;

INSERT INTO SALER VALUES
('SALER001', '商家A', 'salera@email.com', '0956789012'),
('SALER002', '商家B', 'salerb@email.com', '0967890123'),
('SALER003', '商家C', 'salerc@email.com', '0978901234');

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