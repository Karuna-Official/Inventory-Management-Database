

Create database InventoryManagement;

Use InventoryManagement;

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category_id INT NOT NULL,
    price DECIMAL(10 , 2 ) NOT NULL,
    stock_quantity INT NOT NULL,
    reorder_level INT NOT NULL
);


CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT
);


CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(50),
    address TEXT,
    phone_number VARCHAR(15) UNIQUE
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    supplier_id INT NOT NULL,
    total_amount DECIMAL(10 , 2 ) NOT NULL
);
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10 , 2 ) NOT NULL
);

insert into Suppliers(supplier_name,contact_name,address,phone_number) values
       ('Chennai Supplies', 'John Doe', '123 Elm Street, Chennai', '987654321'),
       ('Coimbatore Traders', 'Jane Smith', 'Coimbatore', '8765432109'),
       ('Madurai Mart', 'Bob Johnson', 'Madurai', '7654321098'),
       ('Tiruchirappalli Goods', 'Alice Brown', 'Tiruchirappalli', '6543210987'),
       ('Salem Wholesale', 'Tom White', 'Salem', '5432109876'),
       ('Tiruppur Supply', 'Emma Green', 'Tiruppur', '4321098765'),
       ('Erode Prime', 'David Black', 'Erode', '3210987654'),
       ('Vellore Value', 'Sophia Blue', 'Vellore', '2109876543'),
       ('Tirunelveli Super', 'Oliver Gray', 'Tirunelveli', '1098765432'),
       ('Thoothukudi Best', 'Isabella Red', 'Thoothukudi', '1987654321'),
       ('Dindigul Quality', 'Liam Yellow', 'Dindigul', '8765432101'),
       ('Thanjavur Reliable', 'Ava Purple', 'Thanjavur', '7654321091'),
       ('Sivaganga Top', 'Ethan Orange', 'Sivaganga', '6543210981'),
       ('Theni Superior', 'Mia Pink', 'Theni', '5432109871'),
       ('Namakkal Smart', 'Noah Brown', 'Namakkal', '4321098761'),
       ('Karur Efficient', 'Amelia Green', 'Karur', '3210987651'),
       ('Virudhunagar Hub', 'James White', 'Virudhunagar', '2109876541'),
       ('Nagapattinam Express', 'Charlotte Blue', 'Nagapattinam', '1098765431'),
       ('Kanchipuram Trusted', 'Benjamin Black', 'Kanchipuram', '1987654320'),
       ('Ramanathapuram Elite', 'Harper Gray', 'Ramanathapuram', '9876543201');
   
INSERT INTO Categories (category_name, description) 
VALUES ('Electronics', 'Devices and gadgets including phones, laptops, and accessories.'),
       ('Clothing', 'Apparel for men, women, and children including shirts, pants, and dresses.'),
       ('Home Appliances', 'Household devices such as refrigerators, washing machines, and microwaves.'),
       ('Furniture', 'Indoor and outdoor furniture including sofas, tables, and chairs.'),
       ('Books', 'Printed and digital books across various genres and subjects.'),
       ('Sports Equipment', 'Gear and equipment for various sports and fitness activities.'),
       ('Toys', 'Children’s toys including educational and recreational items.'),
       ('Groceries', 'Food items, beverages, and household essentials.'),
       ('Beauty Products', 'Cosmetics, skincare, and personal care products.'),
       ('Automotive', 'Vehicle parts, accessories, and maintenance products.'),
       ('Jewelry', 'Ornaments including rings, necklaces, bracelets, and earrings.'),
       ('Health Products', 'Healthcare items including medicines, supplements, and medical devices.'),
       ('Footwear', 'Shoes, sandals, and other types of footwear for all ages.'),
       ('Office Supplies', 'Stationery and equipment for office and school use.'),
       ('Garden Supplies', 'Tools, plants, and accessories for gardening and landscaping.'),
       ('Pet Supplies', 'Food, toys, and accessories for pets.'),
       ('Music Instruments', 'Various musical instruments including guitars, pianos, and drums.'),
       ('Kitchenware', 'Cookware, utensils, and kitchen gadgets.'),
       ('Travel Accessories', 'Luggage, bags, and travel-related items.'),
       ('Baby Products', 'Products for infants and toddlers including clothing, toys, and care items.');


INSERT INTO Products (Product_name, category_id, price, stock_quantity, reorder_level) 
VALUES ('iPhone 13', 1, 799.99, 50, 10),      
        ('Sony Headphones', 1, 150.00, 60, 15),  
		('Adidas T-shirt', 2, 25.00, 150, 30),  
       ('Levi\'s Jeans', 2, 59.99, 100, 20),  
       ('LG Washing Machine', 3, 700.00, 20, 5),  
       ('Samsung Refrigerator', 3, 1200.00, 30, 5),  
       ('Wooden Dining Table', 4, 350.00, 15, 3),  
       ('Office Chair', 4, 120.00, 40, 10),  
       ('Harry Potter Book Set', 5, 45.00, 200, 50),  
        ('The Great Gatsby', 5, 10.00, 250, 60),  
       ('Yoga Mat', 6, 25.00, 80, 10),  
       ('Dumbbell Set', 6, 50.00, 70, 10), 
       ('Lego Star Wars Set', 7, 70.00, 60, 15),  
       ('Barbie Doll', 7, 25.00, 80, 20), 
       ('Organic Olive Oil', 8, 10.00, 150, 30), 
       ('Pack of Pasta', 8, 5.00, 200, 40),  
       ('Lipstick', 9, 20.00, 120, 25),  
       ('Face Cream', 9, 30.00, 110, 25),  
       ('Car Battery', 10, 100.00, 40, 10),  
       ('Motor Oil', 10, 40.00, 50, 10),  
       ('Gold Necklace', 11, 500.00, 20, 5),  
       ('Silver Earrings', 11, 70.00, 40, 10),  
       ('Vitamin C Supplement', 12, 15.00, 180, 40),  
       ('Fish Oil Capsules', 12, 20.00, 160, 30),  
       ('Nike Running Shoes', 13, 120.00, 70, 15),  
       ('Puma Sneakers', 13, 90.00, 85, 20), 
       ('Printer Paper', 14, 5.00, 300, 50),  
       ('Stapler', 14, 10.00, 200, 50),  
       ('Garden Shovel', 15, 25.00, 50, 10),  
       ('Garden Hose', 15, 30.00, 60, 15),  
       ('Dog Food', 16, 30.00, 90, 20),  
       ('Cat Litter', 16, 15.00, 100, 20),  
       ('Acoustic Guitar', 17, 150.00, 25, 5),  
       ('Electric Keyboard', 17, 250.00, 20, 5),  
       ('Non-stick Frying Pan', 18, 35.00, 100, 20),  
       ('Blender', 18, 60.00, 75, 15), 
       ('Travel Backpack', 19, 75.00, 60, 10),  
       ('Travel Pillow', 19, 20.00, 90, 20),  
       ('Baby Stroller', 20, 200.00, 30, 5),  
       ('Baby Monitor', 20, 80.00, 40, 10); 


INSERT INTO OrderDetails (order_id, product_id, quantity, unit_price) 
VALUES 
(1, 1, 3, 799.99),    
(1, 2, 5, 150.00),    
(2, 3, 10, 25.00),    
(2, 4, 7, 59.99),     
(3, 5, 2, 700.00),    
(3, 6, 1, 1200.00),   
(4, 7, 1, 350.00),    
(4, 8, 3, 120.00),    
(5, 9, 4, 45.00),     
(5, 10, 10, 10.00),   
(6, 11, 5, 25.00),    
(6, 12, 3, 50.00),    
(7, 13, 2, 70.00),   
(7, 14, 6, 25.00),    
(8, 15, 12, 10.00),   
(8, 16, 20, 5.00),    
(9, 17, 4, 20.00),    
(9, 18, 2, 30.00),    
(10, 19, 6, 100.00),  
(10, 20, 8, 40.00),   
(11, 21, 1, 500.00),  
(11, 22, 3, 70.00),   
(12, 23, 10, 15.00),  
(12, 24, 8, 20.00),   
(13, 25, 4, 120.00),  
(13, 26, 5, 90.00),   
(14, 27, 50, 5.00),   
(14, 28, 10, 10.00),  
(15, 29, 3, 25.00),   
(15, 30, 4, 30.00),   
(16, 31, 8, 30.00),   
(16, 32, 7, 15.00),   
(17, 33, 3, 150.00),  
(17, 34, 2, 250.00),  
(18, 35, 12, 35.00),  
(18, 36, 5, 60.00),   
(19, 37, 4, 75.00),   
(19, 38, 9, 20.00),   
(20, 39, 2, 200.00),  
(20, 40, 1, 80.00); 


INSERT INTO Orders (order_date, supplier_id, total_amount) 
VALUES ('2024-08-01', 12, 950.00), 
       ('2024-08-01', 6, 850.00),   
       ('2024-08-01', 11, 850.00),  
       ('2024-08-02', 3, 1350.00),  
       ('2024-08-02', 8, 1120.00),  
       ('2024-08-03', 7, 950.00),   
       ('2024-08-03', 20, 650.00),  
       ('2024-09-03', 16, 1180.00), 
       ('2024-08-04', 2, 980.00),   
       ('2024-09-05', 5, 970.00),   
       ('2024-09-06', 12, 1140.00), 
       ('2024-09-06', 4, 780.00),   
       ('2024-09-06', 3, 1250.00),  
       ('2024-08-07', 9, 760.00),   
       ('2024-09-08', 19, 1100.00), 
       ('2024-09-08', 16, 1200.00), 
       ('2024-08-08', 1, 1100.00),  
       ('2024-08-09', 10, 1400.00), 
       ('2024-09-09', 9, 790.00),   
       ('2024-09-10', 18, 800.00),  
       ('2024-09-10', 19, 1150.00),
       ('2024-09-11', 10, 1300.00), 
       ('2024-09-11', 1, 1150.00),  
       ('2024-08-12', 7, 1020.00),  
       ('2024-08-12', 1, 1200.00),  
       ('2024-09-12', 18, 820.00),  
       ('2024-08-13', 2, 920.00),   
       ('2024-08-13', 3, 1400.00),  
       ('2024-09-14', 12, 1100.00), 
       ('2024-09-14', 14, 1320.00), 
       ('2024-09-14', 15, 860.00),  
       ('2024-08-15', 6, 860.00),   
       ('2024-08-15', 18, 780.00),  
       ('2024-08-15', 8, 1080.00),  
       ('2024-08-15', 5, 1100.00),  
       ('2024-09-16', 13, 720.00),  
       ('2024-09-16', 13, 750.00),  
       ('2024-08-17', 4, 820.00),   
       ('2024-08-17', 9, 720.00),   
       ('2024-08-17', 16, 1250.00), 
       ('2024-09-19', 20, 690.00),  
       ('2024-09-20', 17, 970.00),  
       ('2024-08-20', 8, 1150.00);  
 
  
   


