<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .menu {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        .currency-selector {
            display: inline-block;
            margin-bottom: 20px;
        }

        #convertButton {
            display: inline-block;
            margin-left: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #convertButton:hover {
            background-color: #0056b3;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="menu">
        <h1>Menu</h1>
        <div class="currency-selector">
            <label for="currency">Select Currency:</label>
            <select id="currency" onchange="convertPrices()">
                <option value="INR">INR</option>
                <option value="USD">USD</option>
            </select>
        </div>
        <button id="convertButton" onclick="convertPrices()">Convert Prices</button>
        <ul id="menu-items">
            <li data-price="100">Cheeseburger: $34.0</li>
            <li data-price="200">Spicy Chicken: $50.0</li>
            <li data-price="300">Pepperoni Pizza: $75.0</li>
        </ul>
    </div>
    <script>
        function convertPrices() {
            var currency = document.getElementById("currency").value;
            var items = document.querySelectorAll("#menu-items li");

            items.forEach(function(item) {
                var price = parseFloat(item.getAttribute("data-price"));
                if (currency === "USD") {
                    price *= 0.014; // Assuming 1 INR is 0.014 USD
                    item.textContent = "Item: $" + price.toFixed(2);
                } else if (currency === "INR") {
                    price *= 71.13; // Assuming 1 USD is 71.13 INR
                    item.textContent = "Item: ₹" + price.toFixed(2);
                }
            });
        }
    </script>
</body>
</html>
