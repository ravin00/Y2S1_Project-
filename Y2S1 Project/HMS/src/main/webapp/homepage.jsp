<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HomePage</title>
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

    /* CSS for main element */
    .intro {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      width: 100%;
      height: 520px;
      background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.5) 100%), url("https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17818.jpg?w=996&t=st=1698152710~exp=1698153310~hmac=968e91232d1a36b759c17290199d5f88e80edf43072e5d5bc5fb5f2416740dc5");
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }

    .intro h1 {
      font-family: sans-serif;
      font-size: 60px;
      color: #fff;
      font-weight: bold;
      text-transform: uppercase;
      margin: 0;
    }

    .intro p {
      font-size: 20px;
      color: #d1d1d1;
      text-transform: uppercase;
      margin: 20px 0;
    }

    .intro button {
    /* style = "background-color: 1450A3; border-color: 1450A3;" */
      background-color: #00A9FF;  
      color: white;
      padding: 10px 25px;
      border: none;
      border-radius: 5px;
      font-size: 20px;
      font-weight: bold;
      cursor: pointer;
      /* box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.4) */
    }
    
    .intro button:hover{
    	background-color: #337CCF;
    	box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
    	color: white;
    }

    .achievements {
      display: flex;
      justify-content: space-around;
      align-items: center;
      padding: 40px 80px;
    }

    .achievements .work {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 0 40px;
    }

    .achievements .work i {
      width: fit-content;
      font-size: 50px;
      color: #333333;
      border-radius: 50%;
      border: 2px solid #333333;
      padding: 12px;
    }

    .achievements .work .work-heading {
      font-size: 20px;
      color: #333333;
      text-transform: uppercase;
      margin: 10px 0;
    }

    .achievements .work .work-text {
      font-size: 15px;
      color: #585858;
      margin: 10px 0;
    }

    .about-me {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 40px 80px;
      border-top: 2px solid #eeeeee;
    }

    .about-me img {
      width: 500px;
      max-width: 100%;
      height: auto;
      border-radius: 10px;
    }

    .about-me-text h2 {
      font-size: 30px;
      color: #333333;
      text-transform: uppercase;
      margin: 0;
    }

    .about-me-text p {
      font-size: 15px;
      color: #585858;
      margin: 10px 0;
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
</head>

<body>
  <header class="header">
    <a href="#" class="logo">MedLogiX</a>
    <nav class="nav-items">
      <a href="homepage.jsp">Home</a>
      <a href="aboutUs.jsp">About Us</a>
      <a href="#">Contact</a>
      <a href="login.jsp">Admin Panel</a>
      <!-- <a href="patient_report-list.jsp">Senura</a>
      <a href="#">Chethmi</a>
      <a href="#">Sithika</a>
      <a href="#">Ravin</a> -->
    </nav>
  </header>
  <main>
    <div class="intro">
      <h1>Not your average health care partner</h1>
      <p>Your Health, Our Commitment</p>
      <button>Get Started</button>
    </div>
    <div class="achievements">
      <div class="work">
        <i class='fas fa-hand-holding-medical' style='font-size:36px'></i>
        <p class="work-heading">Medication</p>
        <p class="work-text">Reliable medication services for your well-being, ensuring accurate prescriptions, prompt delivery, and professional guidance when you need it most.</p>
      </div>
      <div class="work">
        <i class='fas fa-ambulance' style='font-size:36px'></i>
        <p class="work-heading">Ambulance Service</p>
        <p class="work-text">Our ambulance service is your rapid lifeline in emergencies. Trained professionals and well-equipped vehicles ensure prompt and safe medical care.</p>
      </div>
      <div class="work">
        <i class='fas fa-laptop-medical' style='font-size:36px'></i>
        <p class="work-heading">Virtual Medication</p>
        <p class="work-text">Virtual medication consultations offer convenient access to expert guidance, prescriptions, and monitoring for your health, all from the comfort of home.</p>
      </div>
    </div>
    <div class="about-me">
      <div class="about-me-text">
        <h2>About Us</h2>
        <p>At MedLogiX, we're dedicated to revolutionizing healthcare management. Our team combines technological expertise and a commitment to improving patient care. We're here to simplify hospital operations, ensuring efficiency, precision, and better outcomes.</p>
      </div>
      <img src="https://img.freepik.com/free-photo/healthcare-workers-preventing-virus-quarantine-campaign-concept-cheerful-friendly-asian-female-physician-doctor-with-clipboard-during-daily-checkup-standing-white-background_1258-107867.jpg?w=1060&t=st=1698061269~exp=1698061869~hmac=e0d931f7e0e79641c59c458e60a63962426829adbea3c757224e17f65eb5e33d" alt="me">
    </div>
  </main>
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