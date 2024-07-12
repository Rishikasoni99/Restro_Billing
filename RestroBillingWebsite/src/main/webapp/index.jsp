<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file ="cdn.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Order Options</title>
 
    
 

  <style>
        body {
            margin: 0px;
            padding: 0px;
            font-family: sans-serif;
            background: url('image/Home.jpg');
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
        }
        .option-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .option-button {
            width: 50%; 
            height: 200px; 
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            border: none;
            color: white;
            font-size: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-end;
            cursor: pointer;
            margin: 10px;
            text-align: center;
        }
        .button-label {
            margin-top: 5px;
        }
        .dine-in-button {
            background-image: url('image/Dinein.jpeg'); 
          
        }
        .take-out-button {
            background-image: url('image/takeout.jpeg'); 
        
        }
        .order-button {
            margin: 20px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: black;
            color: white;
            border: none;
            cursor: pointer;
            text-decoration: none;
            align-self: center;
        }
    </style>
    </head>
<body>
    <button type="button" class="order-button" data-toggle="modal" data-target="#orderModal">
        ORDER HERE
    </button>

    <!-- Modal structure -->
    <div id="orderModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="orderModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="orderModalLabel">Choose an Option</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body text-center">
                    <div class="option-buttons">
                        <button id="dineInBtn" class="option-button dine-in-button">
                           
                        </button>
                        <button id="takeOutBtn" class="option-button take-out-button">
                           
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

  
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Get modal buttons
            const dineInBtn = document.getElementById('dineInBtn');
            const takeOutBtn = document.getElementById('takeOutBtn');

            // Redirect to respective pages on button click
            dineInBtn.onclick = function() {
                window.location.href = 'menu.jsp';
            }

            takeOutBtn.onclick = function() {
                window.location.href = 'menu.jsp';
            }
        });
    </script>
</body>
</html>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    