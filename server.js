let mysql = require("mysql");
let inquirer = require("inquirer");

let connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Iloveramen123!",
    database: "greatbay"
});

connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
  });

function start() {
    inquirer
        .prompt({
            name: "welcomeMenu",
            type:"list",
            message:"Welcome to your employee Control Management System, what would you like to do?",
            choices: ["Test1", "Test2", "Test3"]
        })
}