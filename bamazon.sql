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

VALUES ("Chili", "Grocery", 5, 10), ("Shoe", "Apparel", 20, 10), ("Lamp", "Home Decor", 15, 15), ("Guitar", "Music", 150, 5), ("Laptop", "Electronics", 700, 20);

SELECT * FROM inventory WHERE product_name = "Laptop";