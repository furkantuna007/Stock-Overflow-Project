const mysql = require('mysql');
const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');
const app = express();
const port = 3000;

// MySQL database connection configuration
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Ral72mur',
  database: 'stockoverflowdatabase'
});

// Connect to the MySQL server
connection.connect((err) => {
  if (err) {
    console.error('Error connecting to the database: ' + err.stack);
    return;
  }
  console.log('Connected to the database as id ' + connection.threadId);
});

// Configure Express to parse request bodies
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Serve static files from the given path
app.use(express.static('/Users/alpakkanlar/Desktop/StockOverflow'));

// Function to handle form submission
app.post('/items', (req, res) => {
    const { name, quantity } = req.body;
  
    // Insert new item into the database
    const query = 'INSERT INTO items (name, quantity) VALUES (?, ?)';
    connection.query(query, [name, quantity], (error) => {
      if (error) {
        console.error('Error inserting item: ' + error.stack);
        res.sendStatus(500);
        return;
      }
      console.log('Item inserted successfully');
      res.sendStatus(200);
    });
});

// Function to fetch stock data from the database
app.get('/items', (req, res) => {
  // Retrieve all items from the database
  const query = 'SELECT * FROM items';
  connection.query(query, (error, results) => {
    if (error) {
      console.error('Error fetching items: ' + error.stack);
      res.sendStatus(500);
      return;
    }
    res.json(results);
  });
});

// Route to serve index.html
app.get('/', (req, res) => {
  res.sendFile('/Users/alpakkanlar/Desktop/StockOverflow/index.html');
});

// Start the server
app.listen(port, () => {
  console.log('Server running on port ' + port);
});
