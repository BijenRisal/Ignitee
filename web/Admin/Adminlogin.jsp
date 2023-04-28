
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<style>
    *{
        margin: 0;
        padding: 0;
    }
.navbar {
  overflow: hidden;
  background-color: #3498db;
  padding-right: 225px;
  height: 55px;
  
}

.navbar a {
  float: right;
  font-size: 1.5em;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
  
}

.dropdown {
  float: right;
  overflow: hidden;
  margin-right: 10%;
}

.dropdown .dropbtn {
  font-size: 1.5em;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.logo {
  font-size: 1.5em;
  /* font-weight: bold; */
  color: #fff;
  float: left;
}

.banner {
    position: relative;
    width: 100%;
    height: 500px;
    /* padding: 0 100px; */
}

.banner .bg {
    position: relative;
    background-color: beige;
    width: 100%;
    height: 90vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.cover {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;

}

.content {
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
.content h2{
    position: relative;
    color: black;
    font-size: 4em;
}
.btn{
    display: inline-block;
    background-color: beige;
    color: black;
    padding: 20px 40px;
    text-decoration: none;
    font-size: 1.1em;
    margin-top: 20px;
    letter-spacing: 2px;
}
.footer {
  
  width: 80%;
  padding: 50px 10%;
  background: #333;
  color: white;
  display: flex;
  height: 250px;
}

.footer div {
  text-align: centre;

}

.col-2 {
  flex-grow: 2;
  margin-left: 160px;
}

.footer div h3 {
  font-weight: 300;
  margin-bottom: 30px;
  letter-spacing: 1px;

}
/* .col-3{
margin-left: 20px;
} */
.col-3 a {
  text-decoration: none;
  display: block;
  color: white;
  margin-bottom: 10px;
  font-size: 20px;
}
.col-2 form{
height: 40px;
width: 250px;
margin-right: 10% ;
margin-bottom: 40px;
}
.col-2 form input{
  width: 400px;
  height: 45px;
  border-radius: 4px;
  text-align: center;
  /* margin-top: 20px; */
  margin-bottom: 20px;
  outline: none;
  border: none;
  margin-right: 20px;

}
form button{
  background: transparent;
  border: 2px solid #fff;
  border-radius: 30px;
  padding: 10px 30px;
  font-size: 15px;
  cursor: pointer;
  color: white;
 margin-left: 50px;
}
.last {
    background-color: blueviolet;
    height: 50px;
    width: 100%;

}

.last p {
    font-size: 15px;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    color: black;
    text-align: center;
    padding: 20px;
}
.blog-section {
    height: 440px;
    width: 100%;
    background-color: white;
}

.b1 {
    height: 440px;
    width: 30%;
    background-color: white;
    float: left;
    margin: 24px;
}

.b1 .img {
    height: 200px;
    width: 100%;
    background-color: aliceblue;
}

.b1 .img-box {
    height: 100%;
    width: 100%;
    background-color: aqua;
}
.read-more-btn{
display: inline-block;
color: #fff;
background-color: blue;
border: none;
border-radius: 5px;
padding: 12px 20px;
font-size: 18px;
cursor: pointer;
/* margin-left:30px; */

}
.read-more-btn hover{
background-color: aqua;
}
.login-form {
  max-width: 500px;
  margin: 0 auto;
  text-align: center;
}

.login-form h2 {
  font-size: 2rem;
  margin-top: 20px;
}

.login-form .form-group {
  margin-top: 20px;
}

.login-form label {
  display: block;
  font-size: 1.1rem;
  font-weight: bold;
  margin-bottom: 5px;
}

.login-form input[type="text"],
.login-form input[type="password"] {
  width: 70%;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 1.1rem;
  margin-bottom: 5px;
}

.login-form button[type="submit"] {
  background-color: #3498db;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  font-size: 1.2rem;
  margin-top: 20px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.login-form button[type="submit"]:hover {
  background-color: #2980b9;
}

.login-form .links {
  margin-top: 20px;
}

.login-form .links a {
  text-decoration: none;
  color: #3498db;
  font-size: 1.1rem;
  transition: color 0.3s ease;
}

.login-form .links a:hover {
  color: #2980b9;
}

.login-form .links span {
  color: #333;
  font-size: 1.1rem;
  margin: 0 10px;
}
.new button {
        height: 40px;
        width: 25%;
        color: white;
        background-color: blue;
        border-radius: 10%;
        margin-top: 20px;
        margin-left: 30px;

    }
</style>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <a href="#">IGNITE</a>
      </div>
<!--    <div class="dropdown">
        <button class="dropbtn">Profile
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="#">Edit </a>
          <a href="#">Status</a>
          <a href="#">Log Out</a>
        </div>
      </div> -->
<!--  <a href="#">College</a>
  <a href="#">Course </a>
  <a href="#">Home</a>-->
</div>

<div class="banner">
    <form class="login-form" action="../AdminController?page=view" method="post">
      <h2>Log In</h2>
      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
      </div>
      <div class="new">
        <button name="button" value="Submit">Log In</button>
        <a href="Home.jsp"></a><br>
    </div>
      <div class="links">
        <a href="#">Forget Password?</a>
        <span> | </span>
        <a href="#">Register</a>
      </div>
    </form>

<!-- </div> -->
</div>

    
<div class="footer">
    <div class="col-1">
        <h3>CONTACT</h3>

        <p style="font-size: 20px;" >Ignite is educational scholarship .
            <br>
            Jawalakhel, Lalitpur 
            <br>
            +977 9869102123
             <br>
            Email: infoignite@gmail.com
    </div>
    <div class="col-2">
        <h3>NewLetters</h3>
        <form>
            <input type="email" name="" id="" placeholder="Your Email" required>
            <br>
            <button type="Submit">SUBSCRIBE NOW</button>
        </form>
    </div>
    <div class="col-3">
        <h3>INFORMATION</h3>
        <a href="#">About Us</a>
        <a href="#">Terms and policy</a>
        <a href="#">Customer service</a>
        <a href="#">Contact Us</a>
        <a href="#">Carrer Opportunities</a>
    </div>

</div>
</body>

</html>