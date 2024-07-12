<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file ="cdn.jsp" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
 
 
   body {
    background-color: white;
  }
  .search-box {
    display: flex; 
    margin: 0 auto; 
    width: 90%; 
    background-color: #f1f1f1; 
    border-radius: 6px; 
  }
  

  .search-box input[type="text"] {
    padding: 10px; 
    border: 1px solid #ccc; 
    font-size: 16px; 
    outline: none; 
    width: 80%; 
    border-radius: 6px 0 0 6px; 
  }
  

  .search-box button {
    padding: 10px 20px;
    background-color: #2980b9; 
    color: white;
    border: none; 
    border-radius: 0 6px 6px 0; 
    cursor: pointer;
  }
 

        .left-side {
            float: left;
            width: 50%;
            height: 100vh; 
            overflow-y: scroll; 
            padding: 20px;
            box-sizing: border-box;
        }
     
        .button {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            text-align: center;
        }
        
        .right-side {
            float: left;
            width: 50%;
            height: 100vh;
            overflow: hidden;
            padding: 20px;
            box-sizing: border-box;
            position: relative; 
        }
       
        .carousel-img {
            max-width: 100%;
            height: auto;
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0; 
            transition: opacity 1s ease-in-out;
        }
   
        .carousel-img:first-child {
            opacity: 1;
        }
       
    .modal-backdrop {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: 900;
    }
    .modal {
        display: flex;
        align-items: center;
        justify-content: center;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1000;
    }
    .modal-content {
        padding: 20px;
        border-radius: 10px;
    }
    .modal-header {
        border-bottom: none;
    }
    .close {
        font-size: 1.5rem;
    }
    .form-group {
        margin-bottom: 15px;
    }
    
   .dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.desc {
  padding: 15px;
  text-align: center;
}

.desc {
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 10px;
    margin-bottom: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  .desc p {
    margin: 5px 0;
  }

  .desc button {
    padding: 5px 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  .desc button:hover {
    background-color: #0056b3;

        
    
</style>
</head>
<body>
<div class="content">
        <!-- Upper part for navbar and search -->
        <div class="upper-part">
       <h2 style="text-align: center; font-family: 'Dancing Script', cursive; font-size: 3em; margin: 20px 0;">SS Modern Indian Kitchen</h2>

 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SS</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">DAY'S OFFERS<span class="caret"></span></a>
        <ul class="dropdown-menu">
         
          <li><a href="#">Offers</a></li>
          <li><a href="#">Watch My Cart</a></li>
        </ul>
      </li>
      <li><a href="cart.jsp">Cart[2]</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="#" onclick="showSignUpForm(); return false;"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    
</ul>
    
  </div>
</nav>




<div id="modalBackdrop" class="modal-backdrop" style="display: none;"></div>
<div id="signupForm" class="modal" tabindex="-1" role="dialog" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Sign Up</h5>
                <button type="button" class="close" onclick="hideSignUpForm()" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="your_signup_action_here" method="POST">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                    </div>
                    <button type="submit" class="btn btn-primary"> Account Created</button>
                    <button type="button" class="btn btn-secondary" onclick="hideSignUpForm()">Cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function showSignUpForm() {
        document.getElementById('signupForm').style.display = 'block';
        document.getElementById('modalBackdrop').style.display = 'block';
    }

    function hideSignUpForm() {
        document.getElementById('signupForm').style.display = 'none';
        document.getElementById('modalBackdrop').style.display = 'none';
    }
</script>

  
<div class="container">
  <div class="row">
    <div class="col">
      <form class="form-inline search-bar">
        <div class="search-box">
    <input type="text" placeholder="Search..." name="search">
    <button type="submit">Search</button>
  </div>
      </form>
    </div>
  </div>
</div>
</div>
</div>


 <div class="bottom-part">
            
 <!-- Left side with buttons -->
     <div class="left-side">
    <button class="btn btn-primary button" onclick="showDetails('appetizer')">Appetizer</button>
    <button class="btn btn-warning button" onclick="showDetails('dessert')">Dessert</button>
    <button class="btn btn-success button" onclick="showDetails('maincourse')">Main Course</button>
    <button class="btn btn-info button" onclick="showDetails('beverages')">Beverages</button>
    
    
    
    
    <div class="image-container">
   
</div>
    
    
 
    
     <div id="details"></div>
   
    <div class="image-container">
        <img id="image" src="" style="width: 200px; height: 200px;">
         
       

  
        <img id="cake1" src="image/cake1.png" style="width: 200px; height: 150px;">
     
       

   <div class="dropdown">
  <img src="image/cake2.png" alt="Cinque Terre" width="100" height="50">
  <div class="dropdown-content">
  <img src="image/cake2.png" alt="Cinque Terre" width="200" height="300">
  <div class="desc"> 
  <p>Roseberry Roselet</p>
  <p>299</p>
  <button onclick="addToCart()">Add to Cart</button> </div>
  
 
 
  </div>
</div>
  
   <img src="image/cake3.png" style="width: 200px; height: 150px;">
    <img src="image/cake4.png" style="width: 200px; height: 150px;">
        <img src="image/cake5.png" style="width: 200px; height: 150px;">
        <img src="image/cake6.png" style="width: 200px; height: 150px;">
         
    </div>
    
  </div>
  
  
    <!-- Right side with carousel -->
    <div class="right-side">
        <img class="carousel-img" src="image/pizza.jpeg" alt="Image 1">
        <img class="carousel-img" src="image/pizza.jpeg" alt="Image 2">
        
<img class="carousel-img" src="image/nan.jpeg" alt="Image 3">
<img class="carousel-img" src="image/chaat.jpeg" alt="Image 4">

    
    </div>
    </div>
   
    <script>
        var currentImageIndex = 0;
        var images = document.querySelectorAll('.carousel-img');

        function showDetails(category) {
            var details = "";
            var imageSrc = "";
            var imageSize = "150px";

            switch (category) {
                case 'appetizer':
                    details = "Details for Appetizer";
                    imageSrc = "image/spring.png";
                    break;
                case 'dessert':
                    details = "Details for Dessert";
                    imageSrc = "image/cheesecake.png";
                    break;
                case 'maincourse':
                    details = "Details for Main Course";
                    imageSrc = "image/nan.jpeg";
                    break;
                case 'beverages':
                    details = "Details for Beverages";
                    imageSrc = "image/raeta.jpeg";
                    break;
                default:
                    details = "Details not found";
            }

            document.getElementById("details").innerHTML = details;
            document.getElementById("image").src = imageSrc;

            var images = document.querySelectorAll(".image-container img");
            images.forEach(function(img) {
                img.style.width = imageSize;
                img.style.height = imageSize;
            });
        }



        function showNextImage() {
            images[currentImageIndex].style.opacity = 0; 
            currentImageIndex = (currentImageIndex + 1) % images.length; 
            images[currentImageIndex].style.opacity = 1; 
            setTimeout(showNextImage, 3000); 
        }

        // Start the carousel
        showNextImage();
        
        function addToCart() {
            if (!isLoggedIn()) {
                alert("Please sign up/login first to ensure your order is added to your cart.");
              
            } else {
                addToCartt();
            }
        }

        function isLoggedIn() {
        
            return false; 
        }

        function addToCartt() {
 
            alert("Item added to cart!");
        }

        
        
       

    </script>



    
</body>
</html>
   

</body>
</html>