window.onload = function () {
  // Check if there is a user when the page loads
  fetch("http://localhost:3000/user")
    .then((response) => response.json())
    .then((data) => {
      if (data.success && data.hasUser) {
        // If there is a user, hide user input and show stock page
        document.getElementById("user-input").style.display = "none";
        document.getElementById("stock-page").style.display = "block";

        // Fetch and display the user's data
        fetch("http://localhost:3000/userdata")
          .then((response) => response.json())
          .then((data) => {
            if (data.success) {
              // Display the user's balance and total product count
              document.getElementById("username-display").innerText =
                data.userData.user;
              document.getElementById("balance-display").innerText =
                data.userData.balance;
              document.getElementById("product-count-display").innerText =
                data.userData.productCount;
            }
          });

        // Setup websocket client to listen for balance changes
        const socket = io("http://localhost:3000");
        socket.on("balance updated", (newBalance) => {
          console.log(
            `Received 'balance updated' event with value: ${newBalance}`
          );
          // Update the displayed balance when a balance change is received
          document.getElementById("balance-display").innerText = newBalance;
        });
      }
    })
    .catch((error) => {
      console.error("Error:", error);
    });
};

// Your existing event listener for the submit button goes here

document.getElementById("submit").addEventListener("click", function () {
  var username = document.getElementById("username").value;
  var balance = document.getElementById("balance").value;

  fetch("http://localhost:3000/user", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ user: username, balance: balance }),
  })
    .then((response) => response.json())
    .then((data) => {
      if (data.success) {
        document.getElementById("user-input").style.display = "none";
        document.getElementById("stock-page").style.display = "block";
      } else {
        // Handle error
        console.error("Error:", data.error);
      }
    })
    .catch((error) => {
      console.error("Error:", error);
    });
});

document.getElementById('show-products').addEventListener('click', function() {
  // Load the products from the server
  fetch('http://localhost:3000/products') // replace with your actual endpoint
    .then(response => response.json())
    .then(data => {
      // Create table rows for each product
      const products = data.products;
      const productRows = products.map(product => {
        return `
          <tr class="category-${product.cid}">
            <td>${product.pid}</td>
            <td>${product.cid}</td>
            <td>${product.brand_name}</td>
            <td>${product.price}</td>
            <td>${product.quantity}</td>
          </tr>
        `;
      });

      // Add the product rows to the table
      document.getElementById('product-table').tBodies[0].innerHTML = productRows.join('');

      // Show the product table
      document.getElementById("product-table-container").style.display = "block";
      document.getElementById("show-products").style.display = "none";
      document.getElementById("hide-products").style.display = "block";
    })
    .catch(error => {
      console.error('Error:', error);
    });
});

document.getElementById("hide-products").addEventListener("click", function () {
  // Hide the product table and show the show products button
  document.getElementById("product-table-container").style.display = "none";
  document.getElementById("show-products").style.display = "block";
  document.getElementById("hide-products").style.display = "none";
});

