var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("console.table");
  
var connection = mysql.createConnection({
	host: "localhost",
	port: 3306,
	user: "root",
	password: "root",
	database: "bamazon"
});

function renderTable() {
	connection.connect(function(err) {
    console.log("\n", "\x1b[31m", "THE FOLLOWING PRODUCTS ARE AVAILABLE FROM BAMAZON:", "\x1b[0m", "\n" )
		connection.query("SELECT id, product_name, price FROM products", function(err, res) {
		if (err) throw err
		else console.table(res , "\n");
		purchaseItem();
		});
	});
}
renderTable();

var purchaseItem = function() {
    inquirer
      .prompt([
        {
          name: "choice",
          type: "input",
          validate: function(value) {
            if (isNaN(value) === false && value < 11) {
              return true;
            }
            console.log("\x1b[31m", "Please enter a valid number.", "\x1b[0m" );
            return false;
          },
          message: "What is the ID of the item you would like to purchase?"
        },

        {
          name: "quantity",
          type: "input",
          validate: function(value) {
            if (isNaN(value) === false) {
              return true;
            }
            console.log("\x1b[31m", "Please enter a valid number.", "\x1b[0m" );
            return false;
          },
          message: "How many would you like to purchase?"
        },

      ]).then(function(answer){
        var chosenItem = answer.choice;
        var chosenQuantity = answer.quantity;
             
        connection.query(
          "SELECT id, stock_quantity, price FROM products WHERE id= ? ",
         [chosenItem],

          function(err, results) {
            if (err) {throw err;}

            if (results[0].stock_quantity >= chosenQuantity){
              var prodPrice = results[0].stock_quantity * results[0].price;
              var updatedQuantity = results[0].stock_quantity - answer.quantity;
              // console.log("Updated Quantity is: ", updatedQuantity);
              console.log("Thank you for your order." );
              console.log("Your purchase total is: $" + prodPrice.toFixed(2));
              connection.query(
                "UPDATE products SET stock_quantity = ?  WHERE id= ? ",
                [
                  updatedQuantity, answer.choice
                ],
                function(err,results) {
                  if (err) {throw err;}
                });
            } else {
              console.log("\x1b[31m","There is insufficient quantity in stock. Please re-enter your choices.", "\x1b[0m" );
              purchaseItem();
            }
          }
        );
      });
    };
