<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Panel</title>

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
	/* margin-right: 10%; */
	margin-left: 5%; 
}

.grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
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
  width:300px;
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
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/business-woman-answering-phone_23-2148761297.jpg?w=900&t=st=1698124563~exp=1698125163~hmac=4a383892aa9c7da2197fab888eea46db29108a6f74aaf2bbcb1c927cc5f83f0b");
	background-size:350px;
	color: #ffffff;
}

.item2 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg?w=1060&t=st=1698124628~exp=1698125228~hmac=2b7dc4f56f6e562398ee4b6abe76e7e86c82392a99e241f15c5e499fa7b4177d");
	background-size:370px;
	color: #ffffff;
}

.item3 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/young-female-medical-employee-holding-medical-records_114579-64289.jpg?w=1060&t=st=1698124722~exp=1698125322~hmac=6e3097483e51d53d064d230a09dcb74f886e1b22b6b4f0949b09c9f8e5b2c982");
	background-size:360px;
	color: #ffffff;
}

.item4 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/covid-19-preventing-virus-health-healthcare-workers-quarantine-concept-physician-medical-white-scrubs-attractive-female-doctor-showing-medicine-different-pills-smiling-as-recommend-it_1258-57426.jpg?w=1060&t=st=1698124826~exp=1698125426~hmac=c87208382418ccf6a511da30efbc48fd11c11e0978da0d568c31ec9c0dfc8f0f");
	background-size:360px;
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
	<h1><center>Admin Panel</center></h1>
</div>

	

<div class="container">
	<div class="grid-container">
    	<div class="item1"><a style = "text-decoration: none; color: white;" href="repDash.jsp">Receptionist</a></div>
    	<div class="item2"><a style = "text-decoration: none; color: white;" href="docDash.jsp">Doctor</a></div>
    	<div class="item3"><a style = "text-decoration: none; color: white;" href="nurDash.jsp">Nurse</a></div>  
    	<div class="item4"><a style = "text-decoration: none; color: white;" href="phaDash.jsp">Pharmacist</a></div>
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