const mysql = require('mysql2'); // says that there a library called mysql2
const connection = require('./connection.js')
const db = mysql.createConnection(connection);

db.query("SELECT * FROM customers", (err, data) => {

    if(err) {
    console.error(err)
    }
    console.table(data)
})

db.end();