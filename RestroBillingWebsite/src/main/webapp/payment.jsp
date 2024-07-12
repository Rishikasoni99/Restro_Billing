<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Page</title>
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
      
        body {
            background: linear-gradient(45deg, #f3d4c7, #e9e4f0);
            min-height: 100vh; 
            margin: 0; 
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        /* Container styles */
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }
        
        #paymentDetails {
            display: none;
            text-align: center; 
            margin-top: 20px; 
        }
        #qrCodeContainer {
            display: inline-block; 
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>SS Modern Indian Kitchen - Payment</h1>
        <form id="paymentForm" action="processPayment.jsp" method="post">
            <div class="form-group">
                <label for="paymentMethod">Payment Method:</label>
                <select class="form-control" id="paymentMethod" name="paymentMethod">
                    <option value="cash">Cash</option>
                    <option value="online">Online</option>
                    <option value="upi">UPI</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <!-- Payment details section -->
        <div id="paymentDetails">
            <h2>Payment Details</h2>
            <p>Amount: <span id="amount"></span></p>
            <p>Thanks for ordering!</p>
            <div id="qrCodeContainer">
                <img id="qrCode" src="image/scan.png" alt="QR Code" style="width: 200px; height: 200px;">
            </div>
        </div>
    </div>
    <script>
        document.getElementById("paymentForm").addEventListener("submit", function(event) {
         
            event.preventDefault();
       
            document.getElementById("paymentDetails").style.display = "block";
            // Set the amount in the payment details section
            document.getElementById("amount").textContent = "1999"; 
            // Set the QR code image source
            document.getElementById("qrCode").src = "image/scan.png";
        });
    </script>
</body>
</html>
