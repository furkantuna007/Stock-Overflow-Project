CREATE TABLE categories(
    cid INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE products(
    pid INT PRIMARY KEY,
    cid INT NOT NULL,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (cid) REFERENCES categories(cid)
);



CREATE TABLE deli(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    calories INT NOT NULL,
    isVegan BOOLEAN NOT NULL,
    product_type ENUM ('sausage', 'bacon', 'ham', 'hotDog'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE alcohols(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    calories INT NOT NULL,
    ratio INT NOT NULL,
    product_type ENUM ('beer', 'spirit', 'whiskey', 'raki', 'vodka', 'liqueur'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE dairy_eggs(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    calories INT NOT NULL,
    isVegan BOOLEAN NOT NULL,
    product_type ENUM ('milk', 'yogurt', 'cheese', 'eggs', 'butter', 'cream'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE bakery(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    calories INT NOT NULL,
    isVegan BOOLEAN NOT NULL,
    hasGluten BOOLEAN NOT NULL,
    product_type ENUM ('bread', 'cake', 'pies', 'cookies', 'muffin', 'pastas'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE meat_seafood(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    calories INT NOT NULL,
    isVegan BOOLEAN NOT NULL,
    hasGluten BOOLEAN NOT NULL,
    product_type ENUM ('beef', 'chicken', 'turkey', 'salmon', 'shrimp', 'ground_beef'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);


CREATE TABLE women(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    size ENUM ('XS', 'S', 'M', 'L', 'XL', 'XXL'),
    cut_types ENUM ('slim_fit', 'regular_fit', 'loose_fit', 'tailored_fit', 'straight_fit', 'bootcut'),
    material ENUM ('cotton', 'polyester', 'silk', 'denim', 'wool', 'leather'),
    product_type ENUM ('bra', 'panties', 't-shirt', 'trousers', 'shoes', 'dress'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE men(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    size ENUM ('XS', 'S', 'M', 'L', 'XL', 'XXL'),
    cut_types ENUM ('slim_fit', 'regular_fit', 'loose_fit', 'tailored_fit', 'straight_fit', 'bootcut'),
    material ENUM ('cotton', 'polyester', 'silk', 'denim', 'wool', 'leather'),
    product_type ENUM ('underwear', 'boxer', 't-shirt', 'trousers', 'shoes', 'suit'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE kids(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    size ENUM ('4-6', '7-9', '10-12', '13-15', '16-18'),
    cut_types ENUM ('slim_fit', 'regular_fit', 'loose_fit', 'tailored_fit', 'straight_fit', 'bootcut'),
    material ENUM ('cotton', 'polyester', 'silk', 'denim', 'wool', 'leather'),
    product_type ENUM ('underwear', 'panties', 't-shirt', 'trousers', 'shoes', 'hat'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE baby(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    size ENUM ('0-1', '2-3', '4-5'),
    cut_types ENUM ('slim_fit', 'regular_fit', 'loose_fit', 'tailored_fit', 'straight_fit', 'bootcut'),
    material ENUM ('cotton', 'polyester', 'silk', 'denim', 'wool', 'leather'),
    product_type ENUM ('underwear', 'panties', 't-shirt', 'trousers', 'shoes', 'hat'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);


CREATE TABLE food(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    product_type ENUM ('dry_food', 'wet_food', 'treat'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE accessory(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    product_type ENUM ('clothes', 'collar', 'toy', 'cage'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);


CREATE TABLE makeup(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    isNatural BOOLEAN NOT NULL,
    product_type ENUM ('mascara', 'highlighter', 'lipstick', 'foundation', 'palette'),
    FOREIGN KEY (pid) REFERENCES products(pid)
  
);

CREATE TABLE dye(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    isNatural BOOLEAN NOT NULL,
    product_type ENUM ('hair_dye', 'fabric_dye', 'eyebrow_dye'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE nail_care(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    isNatural BOOLEAN NOT NULL,
    product_type ENUM ('nail_Tools', 'nail_polish', 'nail_clipper', 'nail_strengthener'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);


CREATE TABLE body_care(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    isNatural BOOLEAN NOT NULL,
    product_type ENUM ('deodorants', 'body_wash', 'body_lotion', 'sun_screen'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE hair_care(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    isNatural BOOLEAN NOT NULL,
    product_type ENUM ('shampoo', 'conditioner', 'hair_mask', 'hair_serums'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE oral_care(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    isNatural BOOLEAN NOT NULL,
    product_type ENUM ('brush', 'toothpaste', 'mouth_wash', 'dental_floss'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);


CREATE TABLE baby_care(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    product_type ENUM ('diaper', 'baby_wipes', 'mouth_wash', 'dental_floss'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);


CREATE TABLE feeding(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    product_type ENUM ('baby_formula', 'milk_powder', 'baby_vitamins'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE photo_video(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    memory INT NOT NULL,
    pixel INT NOT NULL,
    product_type ENUM ('camera', 'lens', 'accessory'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE phone(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    memory INT,
    pixel INT,
    product_type ENUM ('smart_phone', 'touch_phone', 'office_phone'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE phone_colors (
    pid INT,
    color VARCHAR(50),
    PRIMARY KEY (pid, color),
    FOREIGN KEY (pid) REFERENCES phone(pid)
);


CREATE TABLE computer(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    memory INT NOT NULL,
    ram INT NOT NULL,
    cpu ENUM ('intel', 'ryzen'),
    product_type ENUM ('gaming_computer', 'office_computer', 'mac'),
    FOREIGN KEY (pid) REFERENCES products(pid)
    
);

CREATE TABLE console_gaming(
    pid INT PRIMARY KEY,
    brand_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    memory INT NOT NULL,  
    product_type ENUM ('playstation', 'xbox', 'gamboy'),
    FOREIGN KEY (pid) REFERENCES products(pid)
);

CREATE TABLE accounting(
    user VARCHAR(50) PRIMARY KEY,
    balance DECIMAL(10,2) NOT NULL
);

CREATE TABLE suppliers(
    sid INT PRIMARY KEY,
    paidAmount DOUBLE,
    sname VARCHAR(50) NOT NULL,
    user VARCHAR(50) NOT NULL,
    FOREIGN KEY (user) REFERENCES accounting(user)
);

CREATE TABLE suppliersend(
    pid INT NOT NULL,
    sid INT NOT NULL,
    supplydate DATE NOT NULL,
    PRIMARY KEY(pid, sid),
    FOREIGN KEY (pid) REFERENCES products(pid),
    FOREIGN KEY (sid) REFERENCES suppliers(sid)
);


CREATE TABLE orders(
    orderID INT PRIMARY KEY,
    paidAmount DOUBLE,
    user VARCHAR(50) NOT NULL,
    FOREIGN KEY (user) REFERENCES accounting(user)
);


CREATE TABLE ordered(
    orderID INT NOT NULL,
    pid INT NOT NULL,
    orderDate DATE NOT NULL,
    pname VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (pid) REFERENCES products(pid),
    FOREIGN KEY (orderID) REFERENCES orders(orderID),
    PRIMARY KEY (pid, orderID)
);