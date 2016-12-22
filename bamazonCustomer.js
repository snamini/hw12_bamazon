var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require('cli-table');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "password",
  database: "Bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
    displayItems();
    askQuestions();
});

var displayItems = function() {
    connection.query("SELECT * FROM products", function(err, res) {
        if (err) throw err;

        var table = new Table({
          head: ['id', 'name', 'department', 'price', 'stock'],
          colWidths: [20, 20, 40, 20, 20]
        });

            // table is an Array, so you can `push`

        for (i = 0; i < res.length; i++) {
          table.push(
            [res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]
            );
        }
        console.log(table.toString());
    });
};

var askQuestions = function() {
  inquirer.prompt({
      name: "product_id",
      type: "input",
      message: "Which product would you like to buy? Name by ID.",
  }).then(function(answer1) {
      console.log(answer1.product_id);

  inquirer.prompt({
      name: "qty",
      type: "input",
      message: "How many would you like?",
  }).then(function(answer2) {
      connection.query("SELECT stock_quantity FROM products Where item_id = " + answer2.qty, function(err, res) {
          if (err) throw err;
          console.log(res);

          if (answer2.qty <= res[0].stock_quantity) {
          console.log("YIPPIE! YOU CAN PURCHASE :D");

          connection.query("UPDATE products SET stock_quantity = stock_quantity - " + answer2.qty + " WHERE item_id=" + answer1.product_id, function(err, res) {
            if (err) throw err;
            console.log(res);
          });

          } else {
            console.log("You're out of luck kid. All sold out.");
            askQuestions();
          }
      });

  });
  });
};
