<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Pharmacist Dashboard</title>

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
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/woman-s-hand-pours-medicine-pills-out-bottle_1150-14201.jpg?w=1060&t=st=1698121070~exp=1698121670~hmac=35fb4d21a078a8a727d88faf57d692e7a0c22ff9c0fc4daa84821cadd9820a26");
	background-size:480px;
	color: #ffffff;
}

.item2 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/side-view-woman-holding-pills-container_23-2149485505.jpg?w=1060&t=st=1698121965~exp=1698122565~hmac=9d497836d62590004fa860c770e1a17755dbe15bb2b9cea81a8adb9c14ff6b2b");
	background-size:480px;
	color: #ffffff;
}

.item3 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/physician-giving-prescription-document-patient-cabinet-after-medical-consultation-medic-holding-checkup-report-give-treatment-retired-person-health-care-office-close-up_482257-33279.jpg?w=1060&t=st=1698122612~exp=1698123212~hmac=556d7772bb4503698091ef09c31f3acb7cbbb9a143805999e1efb2af887d280a");
	background-size:480px;
	color: #ffffff;
}

.item4 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/chemist-explaining-prescription-woman-drugstore_651396-1227.jpg?w=1060&t=st=1698122894~exp=1698123494~hmac=95e323677b1e25cdfd353f222992ab0cb6ed6a8a2f2434c6d987286995908161");
	background-size:480px;
	color: #ffffff;
}

.item5 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/closeup-economist-using-calculator-while-going-through-bills-taxes-office_637285-3156.jpg?t=st=1698118259~exp=1698118859~hmac=0be67828901902315106a8da9895b31d7100f1b018e23ae5a703db7e1e0b52f0");
	background-size:480px;
	color: #ffffff;
}

.item6 {
	background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("https://img.freepik.com/free-photo/female-pharmacist-consulting-customer-drugstore_651396-1215.jpg?w=1060&t=st=1698122985~exp=1698123585~hmac=b6d62b4afff50077de9678cf60a16776811c562f292da8a820c5b514ab5fcc91");
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
	<h1><center>Pharmacist Dashboard</center></h1>
</div>

	

<div class="container">
	<div class="grid-container">
    	<div class="item1">Drug Management</div>
    	<div class="item2">Medication Review</div>
    	<div class="item3">Prescription Verification</div>  
    	<div class="item4">Clinical Interventions</div>
    	<div class="item5">Billing</div>
    	<div class="item6">Consultation Services</div>
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