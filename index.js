const inquirer = require("inquirer");
// Import and require mysql2
const mysql = require('mysql2');
const cTable = require("console.table");
const db = mysql.createConnection(
    {
        host: 'localhost',
        // MySQL username,
        user: 'root',
        // TODO: Add MySQL password here
        password: '12345678',
        database: 'employeetracker_db'
    },
    console.log(`Connected to the movies_db database.`)
);

function menu() {
    inquirer.prompt({
        type: "input",
        name: "action",
        message: "what would you like to do?",
        choices: [
            "Update Employee Role",
            "View All Roles",
            "Add Role",
            "View all departments",
            "View all employes"
        ]
    })
        .then(answers => {
            if (answers.action === "Update Employee Role") {

            } else if (answers.action === "View All Roles") {
                viewRole()
            } else if (answers.action === "Add Role") {
                viewRole()
            } else if (answers.action === "View all departments") {
                viewDepartment();

            } else if (answers.action === "View all employes") {
                viewEmployee() 
            } 
        });
}
function viewDepartment() {
    db.query("SELECT * FROM department", function (error, data) {
        console.table(data)
        menu()
    })
}

function viewRole() {
    db.query("SELECT * FROM role", function (error, data) {
        console.table(data)
        menu()
    })
}

function viewEmployee() {
    db.query("SELECT * FROM employee", function (error, data) {
        console.table(data)
        menu()
    })
}


//add department

function addDepartment(){
    inquirer.prompt({
        type: "input",
        name: "department",
        message: "what what is the department you want to add?",
    })
}