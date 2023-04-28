<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .navbar {
  overflow: hidden;
 background-color: #3498db;
  height: 55px;

  
}

.navbar a {
  float: right;
  font-size: 1.5em;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  margin-right: 2%;
  
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

    .container {
        background-color: white;
        height: 500px;
        width: 100%;
        padding-top: 50px;
    }

    .Sec {
        background-color: white;
        height: 350px;
        width: 80%;
        margin: 0 140px;
        /* text-align: center; */


    }

    .Sec h2 {
        text-align: center;
        font-size: 30px;
        font-family: Arial, Helvetica, sans-serif;
    }

    /* label {
        font-size: 30px;
        margin-top: 20px;
        text-align: center;
        margin-left: 200px;
    } */
    input {
        text-align: justify;
        margin-top: 30px;
        height: 40px;
        /* width: 350px;
        margin-left: 450px; */
        border-color: aqua;

    }

    .Sec input {
        text-align: justify;
        margin-top: 30px;
        height: 40px;
        width: 350px;
        margin-left: 450px;
        border-color: aqua;

    }

    .Sec form p {

        text-align: center;
        margin: 15px 124px 15px 0;
    }




    .footer {

        width: 100%;
        padding: 50px 15%;
        background: #333;
        color: white;
        display: flex;
        height: 330px;
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

    .col-2 form {
        height: 40px;
        width: 250px;
        margin-right: 10%;
        margin-bottom: 40px;
    }

    .col-2 form input {
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

    form button {
        background: transparent;
        border: 2px solid #fff;
        border-radius: 5px;
        padding: 10px 30px;
        font-size: 15px;
        cursor: pointer;
        color: white;
        margin-left: 50px;
    }

    /* hr.new {
            border: 1px solid grey;
        } */

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

    .new button {
        height: 40px;
        width: 15%;
        color: white;
        background-color: red;
        border-radius: 0;
        margin-top: 20px;
        margin-left: 450px;

    }

    .pass a {
        font-size: 20px;
        text-decoration: none;
        color: black;
        margin-left: 450px;

    }

    .pass {
        margin-top: 20px;
    }
    .forgot-password-form {
  max-width: 500px;
  margin: 0 auto;
  text-align: center;
}

.forgot-password-form h2 {
  font-size: 2rem;
  margin-top: 30px;
}

.forgot-password-form p {
  font-size: 1.1rem;
  margin-top: 10px;
}

.forgot-password-form .form-group {
  margin-top: 20px;
}

.forgot-password-form label {
  display: block;
  font-size: 1.1rem;
  font-weight: bold;
  margin-bottom: 5px;
}

.forgot-password-form input[type="email"] {
  width: 100%;
  padding: 10px;
  border: 2px solid #ccc;
  border-radius: 5px;
  font-size: 1.1rem;
  margin-bottom: 10px;
}

.forgot-password-form button[type="submit"] {
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

.forgot-password-form button[type="submit"]:hover {
  background-color: #2980b9;
}
.back-btn {
  background-color: #4CAF50;
  color: white;
/*  padding: 10px;*/
  border: none;
  cursor: pointer;
}

.back-btn:hover {
  background-color: #3e8e41;
}

.back-btn:focus {
  outline: none;
}


</style>

<body>
    <div class="navbar">
        <div class="logo">
            <a href="#">IGNITE</a>
          </div>
        <!-- <div class="dropdown">
            <button class="dropbtn">Profile
              <i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content">
              <a href="#">Edit </a>
              <a href="#">Status</a>
              <a href="#">Log Out</a>
            </div>
          </div>  -->
      <a href="#">College</a>
      <a href="#">Course </a>
      <a href="#">Home</a>
    </div>
    
    <div class="container">
        <form class="forgot-password-form">
            <h2>Forgot Password?</h2>
            <p>Please enter your email address and we will send you a link to reset your password.</p>
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            </div>
            <button type="submit">Submit</button>
             <button class="back-btn" onclick="goBack()">Go Back</button>
          </form>
          
    </div>

    <div class="footer">
        <div class="col-1">
            <h3>CONTACT</h3>

            <p style="font-size: 20px;">Ignite is educational scholarship .
                <br>
                Jawalakhel, Lalitpur
                <br>
                +977 9869102123
                <br>
                Email: infoignite@gmail.com
        </div>
        <div class="col-2">
            <h3>NEWSLETTERS</h3>
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
<script>
function goBack() {
  window.history.back();
}

</script>
</html>