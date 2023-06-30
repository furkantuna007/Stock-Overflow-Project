DELIMITER //


CREATE TRIGGER deli_insert
BEFORE INSERT ON deli
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 1, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER deli_update
AFTER UPDATE ON deli
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 1, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER deli_delete
AFTER DELETE ON deli
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER alcohol_insert
BEFORE INSERT ON alcohols
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 1, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER alcohol_update
AFTER UPDATE ON alcohols
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 1, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER alcohol_delete
AFTER DELETE ON alcohols
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER dairy_eggs_insert
BEFORE INSERT ON dairy_eggs
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 1, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER dairy_eggs_update
AFTER UPDATE ON dairy_eggs
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 1, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER dairy_eggs_delete
AFTER DELETE ON dairy_eggs
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER bakery_insert
BEFORE INSERT ON bakery
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 1, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER bakery_update
AFTER UPDATE ON bakery
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 1, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER bakery_delete
AFTER DELETE ON bakery
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER meat_seafood_insert
BEFORE INSERT ON meat_seafood
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 1, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER meat_seafood_update
AFTER UPDATE ON meat_seafood
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 1, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER meat_seafood_delete
AFTER DELETE ON meat_seafood
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER women_insert
BEFORE INSERT ON women
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 2, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER women_update
AFTER UPDATE ON women
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 2, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER women_delete
AFTER DELETE ON women
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER men_insert
BEFORE INSERT ON men
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 2, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER men_update
AFTER UPDATE ON men
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 2, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER men_delete
AFTER DELETE ON men
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER kids_insert
BEFORE INSERT ON kids
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 2, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER kids_update
AFTER UPDATE ON kids
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 2, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER kids_delete
AFTER DELETE ON kids
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER baby_insert
BEFORE INSERT ON baby
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 2, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER baby_update
AFTER UPDATE ON baby
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 2, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER baby_delete
AFTER DELETE ON baby
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER food_insert
BEFORE INSERT ON food
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 3, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER food_update
AFTER UPDATE ON food
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 3, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER food_delete
AFTER DELETE ON food
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER accessory_insert
BEFORE INSERT ON accessory
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 3, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER accessory_update
AFTER UPDATE ON accessory
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 3, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER accessory_delete
AFTER DELETE ON accessory
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER makeup_insert
BEFORE INSERT ON makeup
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 4, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER makeup_update
AFTER UPDATE ON makeup
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 4, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER makeup_delete
AFTER DELETE ON makeup
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER dye_insert
BEFORE INSERT ON dye
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 4, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER dye_update
AFTER UPDATE ON dye
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 4, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER dye_delete
AFTER DELETE ON dye
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER nail_care_insert
BEFORE INSERT ON nail_care
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 4, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER nail_care_update
AFTER UPDATE ON nail_care
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 4, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER nail_care_delete
AFTER DELETE ON nail_care
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER body_care_insert
BEFORE INSERT ON body_care
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 5, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER body_care_update
AFTER UPDATE ON body_care
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 5, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER body_care_delete
AFTER DELETE ON body_care
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER hair_care_insert
BEFORE INSERT ON hair_care
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 5, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER hair_care_update
AFTER UPDATE ON hair_care
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 5, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER hair_care_delete
AFTER DELETE ON hair_care
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER oral_care_insert
BEFORE INSERT ON oral_care
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 5, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER oral_care_update
AFTER UPDATE ON oral_care
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 5, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER oral_care_delete
AFTER DELETE ON oral_care
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER baby_care_insert
BEFORE INSERT ON baby_care
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 6, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER baby_care_update
AFTER UPDATE ON baby_care
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 6, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER baby_care_delete
AFTER DELETE ON baby_care
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//

CREATE TRIGGER feeding_insert
BEFORE INSERT ON feeding
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 6, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER feeding_update
AFTER UPDATE ON feeding
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 6, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER feeding_delete
AFTER DELETE ON feeding
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER photo_video_insert
BEFORE INSERT ON photo_video
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 7, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER photo_video_update
AFTER UPDATE ON photo_video
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 7, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER photo_video_delete
AFTER DELETE ON photo_video
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER phone_insert
BEFORE INSERT ON phone
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 7, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER phone_update
AFTER UPDATE ON phone
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 7, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER phone_delete
AFTER DELETE ON phone
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//

CREATE TRIGGER phone_delete_color
AFTER DELETE ON phone
FOR EACH ROW
BEGIN
    DELETE FROM phone_colors
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER computer_insert
BEFORE INSERT ON computer
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 7, NEW.brand_name, NEW.price, NEW.quantity);
END;//

CREATE TRIGGER computer_update
AFTER UPDATE ON computer
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 7, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER computer_delete
AFTER DELETE ON computer
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER console_gaming_insert
BEFORE INSERT ON console_gaming
FOR EACH ROW
BEGIN
    INSERT INTO products(pid, cid, brand_name, price, quantity)
    VALUES (NEW.pid, 7, NEW.brand_name, NEW.price, NEW.quantity);
  
END;//

CREATE TRIGGER console_gaming_update
AFTER UPDATE ON console_gaming
FOR EACH ROW
BEGIN
    UPDATE products
    SET cid = 7, brand_name = NEW.brand_name, price = NEW.price, quantity = NEW.quantity
    WHERE pid = NEW.pid;
END;//

CREATE TRIGGER console_gaming_delete
AFTER DELETE ON console_gaming
FOR EACH ROW
BEGIN
    DELETE FROM products
    WHERE pid = OLD.pid;
END;//


CREATE TRIGGER product_arrival
AFTER INSERT ON products
FOR EACH ROW
BEGIN
 
    UPDATE accounting
    SET balance = balance - NEW.price*NEW.quantity;
END;//

CREATE TRIGGER product_ordered
AFTER DELETE ON products
FOR EACH ROW
BEGIN
 
    UPDATE accounting
    SET balance = balance + OLD.price * OLD.quantity;
END;//

CREATE TRIGGER balance_update_on_available_product
AFTER UPDATE ON products
FOR EACH ROW
BEGIN
    IF NEW.quantity > OLD.quantity THEN
        -- quantity increased, decrease balance
        UPDATE accounting
        SET balance = balance - (NEW.price * (NEW.quantity - OLD.quantity));
    ELSEIF NEW.quantity < OLD.quantity THEN
        -- quantity decreased, increase balance
        UPDATE accounting
        SET balance = balance + (NEW.price * (OLD.quantity - NEW.quantity));
    END IF;
END;//

DELIMITER ;
