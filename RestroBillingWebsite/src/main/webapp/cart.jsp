<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        
         background: url('image/bg1.png');
        padding: 20px;
    }
    .cart-container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
    .form-group {
        margin-bottom: 15px;
    }
    label {
        font-weight: bold;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border-bottom: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
    <div class="cart-container">
        <div class="row">
            <div class="col-md-6">
                <h3 class="mb-4">Dishes Selected</h3>
                <table id="cartTable" class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <tbody id="cartItems">
    <tr><td>Roseberry Roselet</td><td>399 INR</td></tr>
    <tr><td>Sahi Korma</td><td>359 INR</td></tr>
    <tr><td>Dalmakni</td><td>299 INR</td></tr>
    <tr><td>Blue Lagoon</td><td>149 INR</td></tr>
    <tr><td>kothe</td><td>179 INR</td></tr>
</tbody>
                            
                            <th>Price (INR)</th>
                        </tr>
                    </thead>
                    <tbody id="cartItems">
                    </tbody>
                </table>
            </div>
            <div class="col-md-6">
                <h2 class="mb-4">Your Cart</h2>
                <form id="cartForm" action="checkout.jsp" method="post">
                    <div class="form-group">
                        <label for="spice">Spice Level:</label>
                        <select name="spice" id="spice" class="form-control">
                            <option value="mild">Mild</option>
                            <option value="medium">Medium</option>
                            <option value="hot">Hot</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="sugar">Sugar Level:</label>
                        <select name="sugar" id="sugar" class="form-control">
                            <option value="normal">Normal</option>
                            <option value="less">Less</option>
                            <option value="none">None</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="dishes">Number of Dishes:</label>
                        <input type="number" name="dishes" id="dishes" min="1" value="1" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="allergies">Allergies:</label>
                        <input type="text" name="allergies" id="allergies" class="form-control">
                    </div>
                    <div class="form-group">
    <label for="finalAmount">Final Payment Amount:</label>
    <input type="text" name="finalAmount" id="finalAmount" readonly class="form-control" placeholder="1999">
</div>
                    
                    <button type="button" onclick="redirectToCheckout()" class="btn btn-primary">Proceed to checkout</button>
                </form>
            </div>
        </div>
    </div>
    
    <script>
        function addToCart() {
            var dishes = document.getElementById('dishes').value;
            var spice = document.getElementById('spice').value;
            var sugar = document.getElementById('sugar').value;
            var allergies = document.getElementById('allergies').value;
            var finalAmount = document.getElementById('finalAmount').value;
            
            // Calculate total price
            var totalPrice = 0;
            var items = [
                { name: "Roseberry Roselet", price: 250 },
                { name: "Cheesecake", price: 200 },
                { name: "Garlic Bread", price: 150 },
                { name: "Sahi Korma", price: 300 }
            ];
            var rows = "";
            items.forEach(function(item) {
                totalPrice += item.price;
                rows += "<tr><td>" + item.name + "</td><td>" + item.price + " INR</td></tr>";
            });
            
            // Update cart table and final amount
            document.getElementById('cartItems').innerHTML = rows;
            
            document.getElementById('finalAmount').value = totalPrice;
        }
        
        function redirectToCheckout() {
            window.location.href = "payment.jsp";
        }
    </script>
</body>
</html>
