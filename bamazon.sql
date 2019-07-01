DROP DATABASE IF EXISTS bamazon_itemDB;
CREATE database bamazon_itemDB;

USE bamazon_itemDB;

CREATE TABLE inventory (
    item_id INT auto_increment,
    product_name VARCHAR (100),
    department_name VARCHAR (100),
    price DECIMAL (10,2),
    stock_quantity INT,
    PRIMARY KEY (item_id),
);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)

VALUES  ('Chili', 'Grocery', 5, 10), 
        ('Banana', 'Grocery', .25, 200),
        ('White Bread', 'Grocery', 1, 50),
        ('5lbs Sugar', 'Grocery', 10, 10),
        ('Shoes', 'Apparel', 20, 10), 
        ('5pk Tee Shirt', 'Apparel', 20, 5),
        ('Snap-Back Hat', 'Apparel', 25, 10),
        ('10pk Socks', 'Apparel', 5, 10),
        ('Dresser', 'Home Decor', 200, 3),
        ('Area Rug', 'Home Decor', 150, 5),
        ('Painting', 'Home Decor', 15, 30),
        ('Lamp', 'Home Decor', 15, 15), 
        ('Guitar', 'Music', 150, 5),
        ('Keyboard', 'Music', 200, 3),
        ('Microphone', 'Music', 50, 6),
        ('Turn Table', 'Music', 175, 5),
        ('Laptop', 'Electronics', 700, 10),
        ('Aux Cord', 'Electronics', 7.25, 20),
        ('Wireless Mouse', 'Electronics', 19.50, 10),
        ('Speakerbox', 'Electronics', 50, 30);

SELECT * FROM inventory WHERE product_name = 'Laptop';