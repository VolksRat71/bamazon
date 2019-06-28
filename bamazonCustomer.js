require("dotenv").config();

var mysql = require("mysql");

var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : process.env.MYSQLPASSWORD,
    database : 'bamazon_itemDB'
});

connection.connect();
 
connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
  if (error) throw error;
  console.log();
});

function checkInventory (productName, requestQty) {
    connection.query(`SELECT * FROM inventory WHERE product_name = ?`,[productName], function(error, productInfo){
        if (error){
            throw error
        } else {
            var actualQty = productInfo[0].stock_quantity
            console.log(actualQty);
            if(actualQty >= requestQty){
                console.log(productInfo[0].price * requestQty);
                var newQty = actualQty - requestQty;
                connection.query(`UPDATE inventory SET stock_quantity = ? WHERE product_name = ?`, [newQty, productName], function(error){
                    if (error){
                        throw error
                    };
                    connection.end();
                })
            }
            // connection.end();
        }
    })
}

checkInventory("Laptop", 1);