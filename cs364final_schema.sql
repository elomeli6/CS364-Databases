use cs364final;

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


INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (44600062, 2103807459595387724, 'nan', 'shiseido', 35.79);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3900821, 2053013552326770905, 'appliances.environment.water_heater', 'aqua', 33.2);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (17200506, 2053013559792632471, 'furniture.living_room.sofa', 'nan', 543.1);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1307067, 2053013558920217191, 'computers.notebook', 'lenovo', 251.74);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004237, 2053013555631882655, 'electronics.smartphone', 'apple', 1081.98);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1480613, 2053013561092866779, 'computers.desktop', 'pulser', 908.62);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (17300353, 2053013553853497655, 'nan', 'creed', 380.96);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (31500053, 2053013558031024687, 'nan', 'luminarc', 41.16);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28719074, 2053013565480109009, 'apparel.shoes.keds', 'baden', 102.71);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004545, 2053013555631882655, 'electronics.smartphone', 'huawei', 566.01);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (2900536, 2053013554776244595, 'appliances.kitchen.microwave', 'elenberg', 51.46);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1005011, 2053013555631882655, 'electronics.smartphone', 'samsung', 900.64);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3900746, 2053013552326770905, 'appliances.environment.water_heater', 'haier', 102.38);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (13500240, 2053013557099889147, 'furniture.bedroom.bed', 'brw', 93.18);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (23100006, 2053013561638126333, 'nan', 'nan', 357.79);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1801995, 2053013554415534427, 'electronics.video.tv', 'haier', 193.03);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (10900029, 2053013555069845885, 'appliances.kitchen.mixer', 'bosch', 58.95);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1306631, 2053013558920217191, 'computers.notebook', 'hp', 580.89);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1005135, 2053013555631882655, 'electronics.smartphone', 'apple', 1747.79);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1003306, 2053013555631882655, 'electronics.smartphone', 'apple', 588.77);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (4803399, 2053013554658804075, 'electronics.audio.headphone', 'jbl', 33.21);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1480714, 2053013561092866779, 'computers.desktop', 'pulser', 921.49);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (1004739, 2053013555631882655, 'electronics.smartphone', 'xiaomi', 197.55);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (6200260, 2053013552293216471, 'appliances.environment.air_heater', 'midea', 47.62);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (34700031, 2061717937420501730, 'nan', 'nan', 151.87);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3900990, 2053013552326770905, 'appliances.environment.water_heater', 'ariston', 122.18);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (27500014, 2053013554692358509, 'nan', 'redmond', 37.98);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (19001139, 2053013557225718275, 'nan', 'gran-stone', 67.58);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28719071, 2053013565480109009, 'apparel.shoes.keds', 'baden', 102.71);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (13500046, 2053013557099889147, 'furniture.bedroom.bed', 'nan', 60.75);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (31501072, 2053013558031024687, 'nan', 'nan', 165.64);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (10800001, 2053013554994348409, 'nan', 'maxwell', 32.92);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28600026, 2053013558282682943, 'nan', 'nan', 399.73);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (26200591, 2053013563693335403, 'nan', 'nan', 203.35);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28714755, 2053013565228450757, 'apparel.shoes', 'respect', 51.22);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3701388, 2053013565983425517, 'appliances.environment.vacuum', 'dauscher', 33.21);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28718079, 2053013565362668491, 'apparel.shoes.keds', 'respect', 66.67);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (2700239, 2053013563911439225, 'appliances.kitchen.refrigerators', 'atlant', 283.12);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (28717908, 2053013565782098913, 'apparel.shoes', 'burgerschuhe', 102.45);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3701244, 2053013565983425517, 'appliances.environment.vacuum', 'elenberg', 33.44);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (4300070, 2053013552385491165, 'nan', 'timberk', 38.59);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3601505, 2053013563810775923, 'appliances.kitchen.washer', 'samsung', 463.15);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (12712064, 2053013553559896355, 'nan', 'triangle', 30.89);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (3600575, 2053013563810775923, 'appliances.kitchen.washer', 'hotpoint-ariston', 275.37);
INSERT INTO Products (product_id, category_id, category_code, brand, price) VALUES (2900475, 2053013554776244595, 'appliances.kitchen.microwave', 'gorenje', 295.99);

INSERT INTO Users (user_id) VALUES (541312140);
INSERT INTO Users (user_id) VALUES (554748717);
INSERT INTO Users (user_id) VALUES (519107250);
INSERT INTO Users (user_id) VALUES (550050854);
INSERT INTO Users (user_id) VALUES (535871217);
INSERT INTO Users (user_id) VALUES (512742880);
INSERT INTO Users (user_id) VALUES (555447699);
INSERT INTO Users (user_id) VALUES (550978835);
INSERT INTO Users (user_id) VALUES (520571932);
INSERT INTO Users (user_id) VALUES (537918940);
INSERT INTO Users (user_id) VALUES (555158050);
INSERT INTO Users (user_id) VALUES (530282093);
INSERT INTO Users (user_id) VALUES (555444559);
INSERT INTO Users (user_id) VALUES (555446365);
INSERT INTO Users (user_id) VALUES (513642368);
INSERT INTO Users (user_id) VALUES (537192226);
INSERT INTO Users (user_id) VALUES (519528062);
INSERT INTO Users (user_id) VALUES (555446831);
INSERT INTO Users (user_id) VALUES (555428858);
INSERT INTO Users (user_id) VALUES (519530528);
INSERT INTO Users (user_id) VALUES (538645907);
INSERT INTO Users (user_id) VALUES (539512263);
INSERT INTO Users (user_id) VALUES (555217733);
INSERT INTO Users (user_id) VALUES (525734504);
INSERT INTO Users (user_id) VALUES (539194858);
INSERT INTO Users (user_id) VALUES (555447224);
INSERT INTO Users (user_id) VALUES (548449430);
INSERT INTO Users (user_id) VALUES (555447570);
INSERT INTO Users (user_id) VALUES (515342595);
INSERT INTO Users (user_id) VALUES (545323115);
INSERT INTO Users (user_id) VALUES (521242564);
INSERT INTO Users (user_id) VALUES (513798668);
INSERT INTO Users (user_id) VALUES (555447748);
INSERT INTO Users (user_id) VALUES (515535834);
INSERT INTO Users (user_id) VALUES (544648245);
INSERT INTO Users (user_id) VALUES (526631741);
INSERT INTO Users (user_id) VALUES (515454339);
INSERT INTO Users (user_id) VALUES (554754045);
INSERT INTO Users (user_id) VALUES (533078094);

INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:00', 'view', 44600062, 541312140, '72d76fde-8bb3-4e00-8c23-a032dfed738c');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:00', 'view', 3900821, 554748717, '9333dfbd-b87a-4708-9857-6336556b0fcc');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:01', 'view', 17200506, 519107250, '566511c2-e2e3-422b-b695-cf8e6e792ca8');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:01', 'view', 1307067, 550050854, '7c90fc70-0e80-4590-96f3-13c02c18c713');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:04', 'view', 1004237, 535871217, 'c6bd7419-2748-4c56-95b4-8cec9ff8b80d');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:05', 'view', 1480613, 512742880, '0d0d91c2-c9c2-4e81-90a5-86594dec0db9');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:08', 'view', 17300353, 555447699, '4fe811e9-91de-46da-90c3-bbd87ed3a65d');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:08', 'view', 31500053, 550978835, '6280d577-25c8-4147-99a7-abc6048498d6');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:10', 'view', 28719074, 520571932, 'ac1cd4e5-a3ce-4224-a2d7-ff660a105880');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:11', 'view', 1004545, 537918940, '406c46ed-90a4-4787-a43b-59a410c1a5fb');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:11', 'view', 2900536, 555158050, 'b5bdd0b3-4ca2-4c55-939e-9ce44bb50abd');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:11', 'view', 1005011, 530282093, '50a293fb-5940-41b2-baf3-17af0e812101');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:13', 'view', 3900746, 555444559, '98b88fa0-d8fa-4b9d-8a71-3dd403afab85');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:15', 'view', 44600062, 541312140, '72d76fde-8bb3-4e00-8c23-a032dfed738c');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:16', 'view', 13500240, 555446365, '7f0062d8-ead0-4e0a-96f6-43a0b79a2fc4');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:17', 'view', 23100006, 513642368, '17566c27-0a8f-4506-9f30-c6a2ccbf583b');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:18', 'view', 1801995, 537192226, 'e3151795-c355-4efa-acf6-e1fe1bebeee5');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:18', 'view', 10900029, 519528062, '901b9e3c-3f8f-4147-a442-c25d5c5ed332');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:19', 'view', 1306631, 550050854, '7c90fc70-0e80-4590-96f3-13c02c18c713');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:19', 'view', 1005135, 535871217, 'c6bd7419-2748-4c56-95b4-8cec9ff8b80d');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:20', 'view', 1003306, 555446831, '6ec635da-ea15-4a5d-96b4-c8ca9d38f89f');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:20', 'view', 4803399, 555428858, '8a6afed4-77f8-40c9-8e76-e062b28216ce');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:22', 'view', 1480714, 512742880, '0d0d91c2-c9c2-4e81-90a5-86594dec0db9');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:23', 'view', 1004739, 519530528, '9882d21f-2c5f-496b-90d4-a1503edb6562');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:23', 'view', 6200260, 538645907, '7d9a8784-7b6c-426e-9924-9f688812fd71');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:24', 'view', 1003306, 555446831, '6ec635da-ea15-4a5d-96b4-c8ca9d38f89f');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:24', 'view', 34700031, 539512263, 'f27a45f8-fb98-459a-96a6-45271f56a987');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:25', 'view', 3900990, 554748717, '5459fbe4-2aa5-42b9-9064-05f853218fe0');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:25', 'view', 27500014, 555217733, '74d40a28-41f9-4325-bbae-b179bd2c0a38');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:25', 'view', 19001139, 525734504, '83f584ed-c7f7-442e-8ae9-713cb27fdece');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:26', 'view', 28719071, 520571932, 'ac1cd4e5-a3ce-4224-a2d7-ff660a105880');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:26', 'view', 13500046, 555446365, '7f0062d8-ead0-4e0a-96f6-43a0b79a2fc4');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:27', 'view', 31501072, 550978835, '6280d577-25c8-4147-99a7-abc6048498d6');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:27', 'view', 10800001, 539194858, '5fe9d0a0-0de6-47de-a55a-eae9f89475cd');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:28', 'view', 28600026, 555447224, '889da81c-2cfc-4df6-a038-ed436c79ee80');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:28', 'view', 26200591, 548449430, '99617d1c-1b5a-42f8-99f1-42ad83a6155f');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:28', 'view', 28714755, 555447570, '99877fbe-d5a8-475e-a662-66bc9d29b6f8');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:30', 'view', 3701388, 515342595, '0e30e1c0-4d3e-4e1a-90e3-ab93b5f5c1a2');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:31', 'view', 3900746, 555444559, '98b88fa0-d8fa-4b9d-8a71-3dd403afab85');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:31', 'view', 28718079, 545323115, '75fb5d0c-e907-4293-9c87-2419c2a7709d');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:33', 'view', 2700239, 521242564, 'f102dd9b-1cbc-4271-b1f8-a34548d02ec3');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:33', 'view', 28717908, 513798668, '2034798f-43f2-8bcb-b169-c5f04a7a5a4f');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:34', 'view', 26200591, 555447748, 'b50d1ae8-1948-4517-8460-09b7601ceef6');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:35', 'view', 3701244, 515535834, 'd90a6f2f-0d0f-47cf-9fe9-62db93dffdb9');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:35', 'view', 4300070, 544648245, 'bb8e28c8-d11f-428a-95e7-056e974fe835');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:35', 'view', 3601505, 526631741, '5ec9bd77-beef-443e-b987-62ffb55b8132');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:36', 'view', 12712064, 515454339, '828dbd8e-8683-409b-aef6-6a94ac983b45');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:36', 'view', 3600575, 554754045, 'bd0302ef-c5ca-4b6a-b916-95cc2840c72c');
INSERT INTO Events (event_time, event_type, product_id, user_id, user_session) VALUES ('2019-10-01 00:00:36', 'view', 2900475, 533078094, '6eaaf55a-7bbe-4b3d-95a8-f3b3e31c39c8');


/* --- create view --- */


