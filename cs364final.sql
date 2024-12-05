use cs364;
-- Drop the tables if they already exist
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Users;

-- Create the Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    category_id BIGINT,
    category_code VARCHAR(255),
    brand VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create the Users table
CREATE TABLE Users (
    user_id BIGINT PRIMARY KEY
);

-- Create the Events table
CREATE TABLE Events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_time DATETIME,
    event_type VARCHAR(50),
    product_id INT,
    user_id BIGINT,
    user_session VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);



INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (44600062, 2103807459595387724, NULL, 'shiseido', 35.79);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3900821, 2053013552326770905, 'appliances.environment.water_heater', 'aqua', 33.2);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (17200506, 2053013559792632471, 'furniture.living_room.sofa', NULL, 543.1);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1307067, 2053013558920217191, 'computers.notebook', 'lenovo', 251.74);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004237, 2053013555631882655, 'electronics.smartphone', 'apple', 1081.98);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1480613, 2053013561092866779, 'computers.desktop', 'pulser', 908.62);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (17300353, 2053013553853497655, NULL, 'creed', 380.96);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (31500053, 2053013558031024687, 'apparel.shoes', 'flamingo', 92.1);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28719074, 2053013565480109009, 'apparel.shoes.keds', 'baden', 102.71);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004545, 2053013555631882655, 'electronics.smartphone', 'huawei', 566.01);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (2900536, 2053013554776244595, 'appliances.kitchen.microwave', 'samsung', 51.46);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3700926, 2053013565983425517, 'appliances.environment.vacuum', 'iRobot', 941.51);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1005008, 2053013555631882655, 'electronics.smartphone', 'apple', 1747.79);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004750, 2053013555631882655, 'electronics.smartphone', 'samsung', 242.63);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (4804055, 2053013554658804075, 'electronics.audio.headphone', 'apple', 161.98);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1003306, 2053013555631882655, 'electronics.smartphone', 'apple', 713.42);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1002544, 2053013555631882655, 'electronics.smartphone', 'samsung', 118.91);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004258, 2053013555631882655, 'electronics.smartphone', 'apple', 530.41);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004249, 2053013555631882655, 'electronics.smartphone', 'apple', 1027.78);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004870, 2053013555631882655, 'electronics.smartphone', 'apple', 772.52);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1002546, 2053013555631882655, 'electronics.smartphone', 'samsung', 190.85);
