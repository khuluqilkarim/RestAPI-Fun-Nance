// db.js

const mysql = require("mysql");

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "Fun_Nance",
});

db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("Connected to Fun_Nance database");
});

module.exports = db;
