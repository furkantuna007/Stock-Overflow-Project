INSERT INTO categories(cid, category_name)
VALUES (1, 'Grocery');

INSERT INTO categories(cid, category_name)
VALUES (2, 'Clothes');

INSERT INTO categories(cid, category_name)
VALUES (3, 'Pets');

INSERT INTO categories(cid, category_name)
VALUES (4, 'Beauty');

INSERT INTO categories(cid, category_name)
VALUES (5, 'Personal_Care');

INSERT INTO categories(cid, category_name)
VALUES (6, 'New_Born');

INSERT INTO categories(cid, category_name)
VALUES (7, 'Electronics');



INSERT INTO deli(pid, brand_name, price, quantity, calories, isVegan, product_type)
VALUES (111222, 'Brand A', 20.00, 10, 100, FALSE, 'bacon');

INSERT INTO deli(pid, brand_name, price, quantity, calories, isVegan, product_type)
VALUES (111223, 'Brand A', 20.00, 10, 100, FALSE, 'bacon');

INSERT INTO phone (pid, brand_name, price, quantity, memory, pixel, product_type)
VALUES (2, 'Apple', 699.99, 10, 256, 12, 'smart_phone');

INSERT INTO phone (pid, brand_name, price, quantity, memory, pixel, product_type)
VALUES (3, 'samsung', 200, 10, 256, 12, 'smart_phone');

INSERT INTO phone_colors (pid, color)
VALUES (2, 'Blue');

UPDATE phone
SET pixel = 24
WHERE pid = 2;



INSERT INTO accounting(user, balance)
VALUES ("kaan", 100);