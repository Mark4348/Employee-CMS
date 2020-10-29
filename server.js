let mysql = require("mysql");
let inquirer = require("inquirer");

let connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Iloveramen123!",
    database: "employeecms"
});

connection.connect(function (err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
});

//function to start the program and display menu
function start() {
    inquirer
        .prompt({
            name: "welcomeMenu",
            type: "list",
            message: "Welcome to your employee Control Management System, what would you like to do?",
            choices: [
                "View All Employees",
                "Add An Employee",
                "View All Employees By Department",
                "Update Employee Role",]
            })
            .then(function(answer){

            if (answer.welcomeMenu === "View All Employees") {
                console.log("view all employees test")
                viewAllEmployees();
            }
            else if (answer.welcomeMenu === "Add An Employee") {
                console.log("Add an employee test")
                addAnEmployee();
            }
            else if (answer.welcomeMenu === "View All Employees By Department") {
                console.log("View all employees by department test")
                viewAllEmployeesByDepartment();
            }
            else if (answer.welcomeMenu === "Update Employee Role") {
                console.log("Update employee role test")
                //updateEmployeeRole();
            }
            else{
                connection.end();
            }
        });
}

//function to View All Employees

function viewAllEmployees() {
    connection.query("SELECT * FROM employees", function(err, results){
        console.table(results);
        if (err) throw err;
    })
}
function viewAllEmployeesByDepartment() {
    connection.query("SELECT * FROM employees WHERE department ?", function(err, results){
        console.table(results);
        if (err) throw err;
    })
}




//function to add Employees
 function addAnEmployee() {
    inquirer.prompt([
        {
            name: "first_name",
            type: "input",
            message: "What is the employees first name?"
          },
          {
            name: "last_name",
            type: "input",
            message: "What is the employees last name?"
          },
          {
            name: "last_name",
            type: "input",
            message: "What is the employees last name?"
         },
        ]).then(function(data){
            connection.query("INSERT INTO employees SET ?",
            {
                first_name: data.first_name,
                last_name: data.last_name,
            },
            function(err) {
                if (err) throw err;
                console.log("Your employee was successfully added!");
                start();
            })
        })
 }


//function to display roles


//askfunctions


//left joins merging relevant data
