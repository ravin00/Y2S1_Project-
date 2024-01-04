<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>

    @import url('https://fonts.googleapis.com/css2?family=Sriracha&display=swap');

    body {
      margin: 0;
      box-sizing: border-box;

    }

    /* CSS for header */
    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #00A9FF;
    }

    .header .logo {
      font-size: 25px;
      font-family: 'Sriracha', cursive;
      color: white;
      text-decoration: none;
      margin-left: 30px;
    }

    .nav-items {
      display: flex;
      justify-content: space-around;
      align-items: center;
      background-color: #00A9FF;
      margin-right: 20px;
    }

    .nav-items a {
      text-decoration: none;
      color: white;
      padding: 35px 20px;
    }
    
    .nav-items a:hover{
    	background-color: white;
    	color: black;
    	text-decoration: none;
    }
    
    /* .container{
    	background-color: #00A9FF;
    	height: 300px;
    	margin-top: 100px;
    	margin-bottom: 100px;
    }
    
    .card{ 
    	background-color: #00A9FF;
    }
    
    .card-body{
    	background-color: #000000;
    	margin-top: 100px;
    	margin-bottom: auto;
    } */
    
    
    .container {
            background-color: white;
            height: auto;
            margin-top: 100px;
            margin-bottom: 100px;
            padding: 20px;
            border-radius: 10px;
        }
        
        .card-body{
        	border: 1px solid #000000;
        	border-radius: 3px
        }
        
        
       .login-button {
      		padding: 10px 25px;
      		border: none;
      		border-radius: 5px;
      		font-size: 20px;
      		font-weight: bold;
      		cursor: pointer;
        }
        
        #buttonLogin{
        	background-color: #00A9FF;
        	color: #ffffff;
        }

        #buttonLogin:hover {
            background-color: #007acc;
    		box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
    		color: white;
        }
       
        
        
        

    /* CSS for footer */
    .footer {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: #00A9FF;
      padding: 40px 80px;
    }

    .footer .copy {
      color: white;
    }

    .bottom-links {
      display: flex;
      justify-content: space-around;
      align-items: center;
      padding: 40px 0;
    }

    .bottom-links .links {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 0 40px;
    }

    .bottom-links .links span {
      font-size: 20px;
      color: white;
      text-transform: uppercase;
      margin: 10px 0;
    }

    .bottom-links .links a {
      text-decoration: none;
      color: white;
      padding: 10px 20px;
    }

</style>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header class="header">
    <a href="#" class="logo">MedLogiX</a>
    <nav class="nav-items">
      <a href="homepage.jsp">Home</a>
      <a href="aboutUs.jsp">About Us</a>
      <a href="#">Contact</a>
     
      <!-- <a href="patient_report-list.jsp">Senura</a>
      <a href="#">Chethmi</a>
      <a href="#">Sithika</a>
      <a href="#">Ravin</a> -->
    </nav>
  </header>
	<br>
	
	
	<div class="container col-md-5">
        <div class="card">
            <div class="card-body">

                <form action="login" method="post">
                    <input type="hidden" name="action" value="login">
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" name="username" id="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" name="password" id="password" required>
                    </div>
                    <button type="submit" id="buttonLogin" class="btn login-button">Login</button>
                </form>
            </div>
        </div>
    </div>     
     
     <footer class="footer">
    <div class="copy">&copy; 2023 All rights reserved</div>
    <div class="bottom-links">
      <div class="links">
        <span>More Info</span>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
      </div>
      <div class="links">
        <span>Social Links</span>
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
  </footer>
  
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXn2x2xg21F5TJv100p8Fqn5f5"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        
        
        
    

</body>
</html>