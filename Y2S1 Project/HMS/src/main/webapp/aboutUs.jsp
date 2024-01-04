<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
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
      background-image: url('https://images.unsplash.com/photo-1566041510394-cf7c8fe21800?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D');

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
    
    .grid-container {
  display: grid;
  grid-template-columns: auto auto auto;
  grid-gap: 20px;
  background-color: none;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(0, 255, 255, 0.8);
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
  width: 300px;
  height: 300px;
  margin-left: 100px;
  margin-right: 25px;
  
}

.item1{
	background-size: 300px 350px;
	background-image: url('https://img.freepik.com/free-photo/medium-shot-female-nurse-working_23-2150796802.jpg?t=st=1698072517~exp=1698076117~hmac=6f40973c958dea5e3bc3715b42f7b10e8cfd04e529b7d8803abfc6a0f8a9142d&w=740');
}

.item2{
	background-size: 300px 350px;
	background-image: url('https://img.freepik.com/free-photo/medium-shot-smiley-doctor-with-coat_23-2148814212.jpg?w=740&t=st=1698070669~exp=1698071269~hmac=9f39d1d199104959d08d4ac7139cb0188be21bbcf67db560182eeccf56654fef');}

.item3{
	background-size: 300px 350px;
	background-image: url('https://img.freepik.com/free-photo/pharmacist-work_23-2150600135.jpg?w=740&t=st=1698073007~exp=1698073607~hmac=4f104f26ac7d2a116b39560078695ab88636cbdbb807981eca9b6a5eaf33f5ec');}


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
  <div style = "width: 50%; margin-right: 25%; margin-left: 25%;">
  <center><h2 style = "font-size: 30px;">About Us</h2>

<p style = "text-align: justify; font-size: 20px;">Welcome to MedLogiX, your partner in revolutionizing the way healthcare institutions operate. We are dedicated to enhancing the efficiency and effectiveness of hospital management through innovative technology solutions.</p><br>

<h2 style = "font-size: 30px;">Our Mission</h2>

<p style = "text-align: justify; font-size: 20px;">At MedLogiX, our mission is clear: to empower healthcare providers with a comprehensive, user-friendly, and secure online platform that simplifies hospital management, ultimately improving patient care and streamlining administrative tasks. We are committed to being at the forefront of healthcare technology.</p><br>

<h2 style = "font-size: 30px;">Why Choose MedLogiX</h2>

    <p style = "text-align: justify; font-size: 20px;"><b>Expertise:</b> Our team comprises professionals with extensive experience in healthcare and technology. We understand the unique challenges faced by healthcare institutions and have designed our system to address them effectively.</p><br>

    <p style = "text-align: justify; font-size: 20px;"><b>Innovation:</b> We continuously strive to stay ahead of the curve, integrating the latest technological advancements into our system. This ensures that our clients are always working with state-of-the-art tools.</p><br>

    <p style = "text-align: justify; font-size: 20px;"><b>Customization:</b> We recognize that every healthcare facility is unique. That's why our platform is highly customizable, allowing you to adapt it to your specific needs and workflows.</p><br>

    <p style = "text-align: justify; font-size: 20px;"><b>Support:</b> Our commitment to your success doesn't stop at implementation. Our dedicated support team is always available to assist you, ensuring that you receive the full benefits of our system.</p><br>

<h2 style = "font-size: 30px;">Join Us in Shaping the Future of Healthcare</h2>
<p style = "text-align: justify; font-size: 20px;">We invite you to join us on a journey to redefine hospital management in the digital age. Together, we can improve patient care, streamline operations, and contribute to a healthier and more efficient healthcare ecosystem. Explore the potential of MedLogiX, and together, let's shape the future of healthcare management.</p>
 </center>
 </div>
 
 	<center><h2 style = "font-size: 30px;">Our Team</h2></center>
 
 <div class="grid-container">
  <div class="item1"></div>
  <div class="item2"></div>
  <div class="item3"></div>
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

</body>
</html>