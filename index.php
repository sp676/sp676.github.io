
<?php
include('dbConnection.php');

if (isset($_POST['btn_contact'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $sql = "INSERT INTO contact_form_tb(name,email,message) VALUES ('$name','$email','$message')";
    if($conn->query($sql) == TRUE){
    $msg = "<script>alert('Your response submitted successfully');</script>";
    }
    else{
      $msg= "<script>alert('Something went wrong'); return false;</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>S-Tech</title>

  <!-- favicon -->
  <link rel="apple-touch-icon" sizes="180x180" href="favicon_io/apple-touch-icon.png" />
  <script src="https://kit.fontawesome.com/9d73cb6a4e.js" crossorigin="anonymous"></script>
  <link rel="icon" type="image/png" sizes="32x32" href="favicon_io/favicon-32x32.png" />
  <link rel="icon" type="image/png" sizes="16x16" href="favicon_io/favicon-16x16.png" />
  <link rel="manifest" href="favicon_io/site.webmanifest" />
  <!-- favicon -->

  <link rel="stylesheet" href="index.css">
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Flamenco" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
  <div class="header">
    <div class="logo">
      <a href="index.php"><img src="images/logo.jpg" alt="logo" /></a>
    </div>
    <div class="navbar">
      <a href="index.php">Home</a>
      <a href="#about">About</a>
      <div class="dropdown">
        <button class="dropbtn"> Services
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="home services.php">Home Services</a>
          <a href="business services.php">Business Services</a>
          <a href="pc repairs.php">Pc Repairs</a>
          <a href="user/request_service.php">Request a service</a>
        </div>
      </div>
      <a href="#contact">Contact Us</a>
      <a href="user/login.php">Login</a>
    </div>
  </div>
  <div id="home" class="container">
    <div class="intro">
      <div class="intro-big-text">
        <p>A better</p>
        <p>tech support</p>
        <p>experience</p>
      </div>
      <div class="intro-small-text">
        <p>We are here to help you with your tech problems</p>
        <p>Any way you want. Satisfaction guaranteed*.</p>
      </div>
    </div>
  </div>
  <section id="about">
    <div class="about">
      <div class="about-text">
        <h1>About Us</h1>
        <p class="big">
          Tech support you can trust
        </p>
        <p class="small">
          For over 20 years, s-tech has been a leader in providing technical support across all brands and devices. We
          serve Fortune 500 companies, businesses, and thousands of individuals like you.
        </p>
      </div>
      <div class="about-video">
        <video src="videos/PCrepairadvertisement_1080p0.mp4" autoplay repeat loop></video>
      </div>
    </div>
  </section>
  <section id="services">
    <div class="services">
      <div class="services-text">
        <h1>Services</h1>
        <p class="big">
          We offer a wide range of services
        </p>
        <p class="small">
          Services as per your needs and as per your budget. We provide home services, business services, apple/mac
          repairs, pc repairs, laptop repairs, macbook screen repair and much more. Join with us and get all these
          services at your doorstep.
        </p>
      </div>
      <div class="video">
        <video src="videos/Computer FIX and REPAIR Commercial Video_1080p0.mp4" autoplay repeat loop></video>
      </div>
    </div>
  </section>
  <section id="contact">
    <div class="contact">
      <div class="contact-text">
        <h1>Contact Us</h1>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3533.0898257571407!2d84.43203061498728!3d27.683618482801702!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3994fb2d933d355d%3A0x5e79bbe09d977ee3!2sSaptagandaki%20Multiple%20Campus!5e0!3m2!1sen!2snp!4v1647419359293!5m2!1sen!2snp"
          width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <div class="feedback">
        <fieldset>
          <legend>Contact Us</legend>
          <form action="index.php" method="post">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" placeholder="Enter your name" required />
            <label for="email">Email</label>
            <input type="email" name="email" id="email" placeholder="Enter your email" required />
            <label for="message">Message</label>
            <textarea name="message" id="message" cols="30" rows="10" placeholder="Enter your message"
              required></textarea>
            <input type="submit" name="btn_contact" value="Submit" />
            <?php
            echo $msg;
            ?>
          </form>
        </fieldset>
      </div>
    </div>
  </section>


  <footer>
    <div class="footer">
      <div class="footer-content">
        <div class="footer-section feeback">
          <p>
            <center> Help us in serving you better</center>
          </p><br>
          <p><a href="user/login.php" class="signin_reg">Join with us!</a></p>
        </div>
        <div class="footer-section links">
          <p>
            <center>S-Tech<center>
          </p><br>
          <!-- <p><a href="signin.html" class="register"> Sign In/Register</a></p> -->
        </div>
        <div class="footer-section cf">
          <div class="cnt">
            <span><i class="fa fa-phone"></i>&nbsp;9845634339</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span><i class="fa fa-envelope"></i>&nbsp;
              <a href="mailto:support@s-tech.com" style="color: white;">support@s-tech.com </a>
          </div><br>&nbsp;
          <div class="socials">
            <a href="https://www.facebook.com" style="color: white; text-decoration: none;" i
              class="fa fa-facebook"></i></a>&nbsp;&nbsp;
            <a href="https://www.instagram.com" style="color: white; text-decoration: none;" i
              class="fa fa-instagram"></i></a>&nbsp;&nbsp;
            <a href="https://twitter.com" style="color: white; text-decoration: none;" i
              class="fa fa-twitter"></i></a>&nbsp;&nbsp;
            <a href="https://www.youtube.com" style="color: white; text-decoration: none;" i
              class="fa fa-youtube"></i></a>&nbsp;
          </div>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; s-tech.com | Designed by Santosh Poudel<br><br>
        Copyright &copy 2020 S-Tech, Nepal. All rights reserved
      </div>
    </div>
  </footer>

</body>
</html>