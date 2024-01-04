<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Dashboard</title>

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


.container {
	width: 80%;
	margin-right: 10%;
	margin-left: 10%;
}

.grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  grid-gap: 50px;
  background-color: none;
  padding: 10px;
  margin-top: auto;
  margin-bottom: auto;
}

.grid-container > div {
  text-align: center;
  padding: 20px 0;
  font-size: 25px;
  width:370px;
  height:200px;
  border-radius: 10px;
  text-align: center;
  vertical-align: middle;
  line-height: 200px;       /* The same as your div height */
}

.grid-container > div:hover{
	cursor: pointer;
	box-shadow: 2px 2px 10px 5px #7F96A2;
}

.item1 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://images.unsplash.com/photo-1587854692152-cbe660dbde88?auto=format&fit=crop&q=80&w=2069&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	background-size:480px;
	color: #ffffff;
}

.item2 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://images.unsplash.com/photo-1576091160550-2173dba999ef?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	background-size:480px;
	color: #ffffff;
}

.item3 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://images.unsplash.com/photo-1564732005956-20420ebdab60?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	background-size:480px;
	color: #ffffff;
}

.item4 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://images.unsplash.com/photo-1579165466991-467135ad3110?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	background-size:480px;
	color: #ffffff;
}

.item5 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	background-size:480px;
	color: #ffffff;
}

.item6 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://images.unsplash.com/photo-1584515933487-779824d29309?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D");
	background-size:480px;
	color: #ffffff;
}


</style>
</head>
<body>

	<header class="header">
    <a href="#" class="logo">MedLogiX</a>
    <nav class="nav-items">
      <a href="homepage.jsp">Home</a>
      <a href="aboutUs.jsp">About Us</a>
      <a href="#">Contact</a>
      <a href="#">Admin Panel</a>
      <!-- <a href="patient_report-list.jsp">Senura</a>
      <a href="#">Chethmi</a>
      <a href="#">Sithika</a>
      <a href="#">Ravin</a> -->
    </nav>
  </header>


<div>
<!-- <br>
	<center><i class='fas fa-file-medical-alt' style='font-size:48px'></i></center> -->
	<h1><center>Doctor Dashboard</center></h1>
</div>

	

<div class="container">
	<div class="grid-container">
    	<div class="item1">Prescription Management</div>
    	<div class="item2">Appointment Scheduling</div>
    	<div class="item3">Patient Care</div>  
    	<div class="item4">Laboratory and Diagnostic Orders</div>
    	<div class="item5">Remote Consultation</div>
    	<div class="item6">Communication and Collaboration</div>
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


</body>
</html>