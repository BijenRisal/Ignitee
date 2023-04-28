
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/font-awesome.min.css">
        <title>Document</title>

    </head>
    <style>
        *{
            margin: 0;
            padding: 0;
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
            height: 450px;
            width: 100%;
            background-color: white;
        }

        .college {
            height: 320px;
            width: 91%;
            background-color: aqua;
            margin-left: 65px;
        }

        .college .bg {
            height: 320px;
            width: 100%;
        }

        .sub-college {
            height: 120px;
            width: 125px;
            background-color: white;

        }

        /* .sub-college .t {
            height: 120px;
            width: 400px;
            background-color: aqua;
            float: left;
            justify-content: right;
            align-items: right;
        } */
        .scholar {
            height: 600px;
            width: 100%;
            background-color: white;
            float: left;
        }
        .status-message {
            width: 40%;
            height: 200px;
            margin-left: 9%;
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
            text-align: center;
            float: left;
            
        }

        .status-message h2 {
            margin-top: 0;
        }

        .status-message p {
            margin-bottom: 10px;
            font-size: 20px;
            padding: 2px;
        }

        .info {
            height: 400px;
            width: 55%;
            background-color: white;
            float: left;
            margin-left: 3%;


        }

        /* .info .o {
            height: 105px;
            width: 100%;
            background-color: white;
        }
    
        .info .o p {
            font-size: 30px;
        } */

        .information {
            height: 300px;
            width: 15%;
            background-color: rgb(249, 245, 245);
            float: left;
            margin-left: 65px;
        }

        .information1 {
            height: 300px;
            width: 15%;
            background-color: rgb(249, 245, 245);
            float: left;
            margin-left: 9%;
        }

        .information ul {
            text-decoration: none;

        }

        .information ul li {
            text-decoration: none;
            padding: 8px;
            list-style: none;
            font-size: 1.1em;
        }

        .information ul li a {
            text-decoration: none;
            color: black;
        }

        .information ul li a:hover {
            color: red;
        }

        .information1 ul {
            text-decoration: none;

        }

        .information1 ul li {
            text-decoration: none;
            padding: 8px;
            list-style: none;
            font-size: 1.1em;
        }

        .information1 ul li a {
            text-decoration: none;
            color: black;
        }

        .information1 ul li a:hover {
            color: red;
        }

        .obtn {
            display: inline-block;
            color: #fff;
            background-color: blue;
            border: none;
            border-radius: 4px;
            padding: 5px 25px;
            font-size: 14px;
            cursor: pointer;
        }

        table,
        th,
        td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        .table p {
            font-size: 20px;
        }

        th {
            font-size: 20px;
            padding: 20px;
        }

        td {
            font-size: 20px;
            padding: 20px;
            justify-content: justify;
            text-align: justify;
        }

        .location {
            height: 300px;
            width: 15%;
            float: left;
            background-color: orange;
            margin-left: 5%;
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
            margin-left: 16%;
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

        .read-more-btn {
            display: inline-block;
            color: #fff;
            background-color: blue;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 18px;
            cursor: pointer;
            margin-left: 140px;

        }

        .read-more-btn hover {
            background-color: aqua;
        }
    </style>

    <style>
        * {
            margin: 0;
            padding: 0;
        }

        #overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
        }

        .main {
            background-color: white;
            height: 720px;
            width: 80%;
            display: none;
            /* margin: 100px auto; */
            position: fixed;
            top: 5%;
            left: 10%;
            padding: 5px;
            align-items: center;
        }

        .firstbox {
            background-color: #ffffff;
            height: 665px;
            width: 20%;
            margin-top: -30px;
            float: left;
            display: grid;
            align-items: center;
        }


        .secondbox {
            background-color: #ffffff;
            height: 700px;
            width: 70%;
            float: right;
            display: grid;
            align-items: center;

        }

        .main label {
            padding: 10px 20px;
        }

        .main input {
            padding: 5px;
            height: 30px;
        }
        .secondbox a{
            display: inline-block;
            color: #fff;
            width: 100px;
            background-color: blue;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 18px;
            cursor: pointer;
            margin-left: 200px;
            text-decoration: none;
        }
        main-box {
            padding: 20px;
            width: 50%;
        }

        .status-message {
            width: 20%;
            height: 200px;
            margin-left: 20%;
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
            text-align: center;
        }

        .status-message h2 {
            margin-top: 0;
        }

        .status-message p {
            margin-bottom: 10px;
            font-size: 20px;
            padding: 2px;
        }

        button {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #444;
        }
    </style>

    <body>
        <div class="navbar">
            <div class="logo">
                <a href="#">IGNITE</a>
            </div>
            <div class="dropdown">
                <button class="dropbtn">Profile
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Edit </a>
                    <a href="UserController?page=statuspage">Status</a>
                    <a href="UserController?page=changepassword">Change Password </a>
                    <a href="UserController?page=exit">Log Out</a>
                </div>
            </div> 
            <a href="UserController?page=college">College</a>
            <a href="#">Course </a>
            <a href="UserController?page=home">Home</a>
        </div>
        <div class="container">

            <div class="college">
                <div class="bg">
                    <img src="British.jpg" alt="" width="100%" height="320px">
                </div>
                <div class="sub-college">
                    <img src="TBC-logo-thumbnail-200x200.png" alt="" height="120px" width="120px">

                </div>
            </div>
        </div>
        <div class="scholar">

            <div class="information">
                <ul>
                    <li><a href="">Home</a></li>
                    <li><a href="">Scholarship</a></li>
                    <li><a href="">Location</a></li>
                    <li><a href="">Contact Us</a></li>
                </ul>
            </div>
            <!--<main-box>-->
            <div class="status-message">
                <h2>Scholarship Application Status</h2>
                <p>Your scholarship application has been <strong>Submitted</strong>.</p>
                <p>Please contact us for further details.</p>
            </div>
            <!--</main-box>-->
            <div class="information1">
                <ul>
                    <li><a href=""> ACCA
                        </a></li>
                    <li><a href="">Cambridge GCE A Levels</a></li>
                    <li><a href="">Established 2012</a></li>
                    <li><a href="">Tripureshwor, Kathmandu</a></li>
                    <li><a href="">Private Institution</a></li>
                    <li><a href="">01-5970003</a></li>
                    <li><a href="">info@thebritishcollege</a></li>
                </ul>
            </div> 
        </div>
        <!--    <div class="blog-section">
                    <div class="b1">
                        <div class="imgb">
                            <img src="British.jpg" alt="" width="100%" height="100%">
                        </div>
                        <div class="content">
                            <h2>Study Hacks</h2>
                            <br>
                            <p>The Study Hacks blog is written by Cal Newport a Computer Science Professor at Georgetown University. He is written a New York Times bestseller and he enjoys writing about the intersection of culture and digital technology.</p>
                            <br>
                            <button class="read-more-btn">Read more</button>    
                        </div>
                    </div>
                    <div class="b1">
                        <div class="imgb">
                            <img src="closeup-shot-two-domed-towers-old-royal-naval-college-greenwich-london.jpg" alt="" width="100%" height="100%">
                        </div>
                        <div class="content">
                            <h2>College Info Geek </h2><br>
                            <p>Thomas Frank and his team built College Info Geek with the mission to help students learn effectively and be more productive. The blog is not only for college students but as the title reads its geared towards those in college. </p> 
                            <br>
                            <button class="read-more-btn">Read more</button>    
                        </div>
        
                    </div>
                    <div class="b1">
                        <div class="imgb">
                            <img src="aerial-view-business-team.jpg" alt="" width="100%" height="100%">
                        </div>
                        <div class="content">
                            <h2> College Cures</h2><br>
                            <p>College Cures is a blog dedicated to the student experience. The content is divided in several categories including relationships and life in college. The blog helps to guide students both during and after their time in college. </p> <br>
                            <button class="read-more-btn">Read more</button>    
                        </div>
                    </div>
                </div>-->
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

        <!--    <div id="overlay"></div>
            <div class="main" id="DocForm">
                <div class="firstbox">
                    <label for="FirstName">FirstName</label>
                    <label for="LastName">LastName</label>
                    <label for="DateOfBirth">Date Of Birth</label>
                    <label for="Email">Email</label>
                    <label for="Phone">Phone number</label>
                     <label for="Gender">Gender</label> 
                    <label for="Address">Address</label>
                    <label for="School">School</label>
                    <label for="College">College</label>
                    <label for="UploadDocuments"> Upload Documents</label>
                    <label for=""></label>
                </div>
                <div class="secondbox">
                    <input type="text" id="FirstName" placeholder="FirstName" name="FirstName">
                    <input type="text" id="LastName" placeholder="LastName" name="LastName">
                    <input type="date" name="dob" id="DateofBirth" placeholder="dd/mm/yy">
                    <input type="email" name="email" id="email" placeholder="email">
                    <input type="number" name="phone" id="" placeholder="*********">
                     <input type="radio" id="Male" name="Gender" value="Male"> 
                    <input type="text" name="Address" id="Address" placeholder="Address">
                    <input type="text" name="School" id="School" placeholder="School">
                    <input type="text" name="College" id="College" placeholder="College">
                    <input type="file" id="UploadDocuments" name="UploadDocuments">
                <a href="">Submit</a>
                </div>
            </div>
        </body>
        <script>
            const DocButton = document.getElementById("DocButton");
            const DocForm = document.getElementById("DocForm");
            DocButton.addEventListener("click", function () {
                DocForm.style.display = "flex";
                document.getElementById("overlay").style.display = "block";
            })
        </script>-->

</html>