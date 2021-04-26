const express  = require('express')
const app = express()
const port = process.env.NODEJS_PORT
const mysql = require('mysql');
const con = mysql.createConnection({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE
  });

con.connect();

app.set('view engine', 'pug');

app.get('/', (req, res) => {
    con.query('SELECT name FROM cursos', (err, rows) => {
        if(err) throw err
        res.render('index', { results : rows } );
      });
})

app.listen(port, () => {
    console.log('Server are up - Running on port: ' + port)
})

