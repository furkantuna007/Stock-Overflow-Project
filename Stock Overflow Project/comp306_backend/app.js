const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");

const db = mysql.createConnection({
  host: "localhost",
  user: "BENİ DOLDUR",
  password: "BENİ DOLDUR",
  database: "BENİ DOLDUR",
});

const app = express();

const http = require("http").createServer(app);
const io = require("socket.io")(http, {
  cors: {
    origin: "*",
  },
});

app.use(cors());
app.use(express.json());

app.get("/user", function (req, res) {
  // Query the database to check if there is a user
  db.query(
    "SELECT COUNT(*) as count FROM accounting",
    function (error, results) {
      if (error) {
        console.log(error);
        res.json({
          success: false,
          error: "An error occurred while checking for user",
        });
      } else {
        const hasUser = results[0].count > 0;
        res.json({ success: true, hasUser: hasUser });
      }
    }
  );
});

app.post("/user", function (req, res) {
  // Extract user and balance from request body
  const user = req.body.user;
  const balance = req.body.balance;

  // Insert user and balance into database
  db.query(
    "INSERT INTO accounting (user, balance) VALUES (?, ?)",
    [user, balance],
    function (error, results) {
      if (error) {
        console.log(error);
        res.json({
          success: false,
          error: "An error occurred while inserting user",
        });
      } else {
        res.json({ success: true });
      }
    }
  );
});

app.get("/userdata", function (req, res) {
  // Query the database to get the user's balance and total product count
  db.query(
    "SELECT user, balance, (SELECT SUM(quantity) FROM products) as productCount FROM accounting",
    function (error, results) {
      if (error) {
        console.log(error);
        res.json({
          success: false,
          error: "An error occurred while fetching user data",
        });
      } else {
        const userData = results[0];
        res.json({ success: true, userData: userData });
      }
    }
  );
});

app.put("/balance", function (req, res) {
  const { newBalance } = req.body;

  // Update the balance in the database
  db.query(
    "UPDATE accounting SET balance = ?",
    [newBalance],
    function (error, results) {
      if (error) {
        console.log(error);
        res.json({
          success: false,
          error: "An error occurred while updating balance",
        });
      } else {
        // Emit 'balance updated' event with the new balance
        console.log(
          `Emitting 'balance updated' event with value: ${newBalance}`
        );
        io.emit("balance updated", newBalance);
        res.json({ success: true });
      }
    }
  );
});

app.get("/products", function (req, res) {
  // Query the database to get all products
  db.query(
    "SELECT * FROM products",
    function (error, results) {
      if (error) {
        console.log(error);
        res.json({
          success: false,
          error: "An error occurred while fetching products",
        });
      } else {
        res.json({ success: true, products: results });
      }
    }
  );
});


io.on("connection", (socket) => {
  console.log("a user connected");
  socket.on("disconnect", () => {
    console.log("user disconnected");
  });
});

http.listen(3000, () => {
  console.log("Server is running on port 3000");
});
