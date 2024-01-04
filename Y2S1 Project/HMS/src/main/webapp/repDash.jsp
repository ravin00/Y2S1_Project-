<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Receptionist Dashboard</title>

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
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/side-view-doctor-filling-document_23-2149941474.jpg?w=1060&t=st=1698117873~exp=1698118473~hmac=514b87ed1ea09d8a9615f616464844287a987bb64c3b1a7977366a03b053420e");
	background-size:480px;
	color: #ffffff;
}

.item2 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/senior-woman-with-walking-frame-hospital-waiting-room-rehabilitation-treatment_482257-8586.jpg?w=1060&t=st=1698118087~exp=1698118687~hmac=aa53ec23425e39a27f1b093507458f29f0c42ae671926e9fb4e5c1eadea210f2");
	background-size:480px;
	color: #ffffff;
}

.item3 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/life-health-insurance-policy-concept-idea_1421-83.jpg?w=1060&t=st=1698118215~exp=1698118815~hmac=4cb03aa7122c8c03dd219696a8f9f12479615163fe8d9197a2fd16bf4814c66f");
	background-size:480px;
	color: #ffffff;
}

.item4 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/closeup-economist-using-calculator-while-going-through-bills-taxes-office_637285-3156.jpg?t=st=1698118259~exp=1698118859~hmac=0be67828901902315106a8da9895b31d7100f1b018e23ae5a703db7e1e0b52f0");
	background-size:480px;
	color: #ffffff;
}

.item5 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/doctor-talking-phone_23-2148497201.jpg?w=1060&t=st=1698118406~exp=1698119006~hmac=d216c67506be52072564c0041c5493a2413026f9687c474b91651cce40befd20");
	background-size:480px;
	color: #ffffff;
}

.item6 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/standard-quality-control-collage-concept_23-2149595829.jpg?w=1380&t=st=1698118465~exp=1698119065~hmac=4f79a0e583dc859a4a4bc386c33723f9040944aa8088adfc6fb070c0125e7be3");
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
	<h1><center>Receptionist Dashboard</center></h1>
</div>

	

<div class="container">
	<div class="grid-container">
    	<div class="item1">Patient Registration</div>
    	<div class="item2">Check-In and Check-Out</div>
    	<div class="item3">Insurance Verification</div>  
    	<div class="item4">Billing Management</div>
    	<div class="item5">Emergency Response</div>
    	<div class="item6">Compliance and Data Security</div>
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