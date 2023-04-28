<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://kit.fontawesome.com/4661699a85.css" crossorigin="anonymous">
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
            background-color: white;
            height: 700px;
            width: 100%;
            /* padding-top: 50px; */
        }

        .footer {

            width: 80%;
            padding: 50px 10%;
            background: #333;
            color: white;
            display: flex;
            height: 250px;
        }

        contents {
            height: 500px;
            width: 100%;
            background-color:white;
        }

        .box {
            height: 250px;
            width: 400px;
            background-color: white;
            margin-left: 5%;
            float: left;
            /* margin-top: 10px; */
            border: 1px solid gray;
            filter: drop-shadow(-4px 13px 8px #E0DDDD);
            margin-top: 20px;
        }
        a{
            color: black;
        }

        .box .img-box {
            height: 150px;
            width: 100%;
            background-color: blue;

        }
        .box .img{
            height: 100%;
            width: 100%;
        }

        .box1 {
            height: 250px;
            width: 400px;
            background-color:red;
            margin-left: 5%;
            float: left;
            margin-top: 40px;
        }

        .box :hover {
            color: red;
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

        .col-3 a {
            text-decoration: none;
            display: block;
            color: white;
            margin-bottom: 10px;
            font-size: 20px;
        }

        form input {
            width: 400px;
            height: 45px;
            border-radius: 4px;
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
            outline: none;
            border: none;
        }

        form button {
            background: transparent;
            border: 2px solid #fff;
            border-radius: 30px;
            padding: 10px 30px;
            font-size: 15px;
            cursor: pointer;
            color: white;
        }
        .box p{
            font-size: 16px;
            padding: 9px 40px;
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

        .b1 .imgb {
            height: 200px;
            width: 100%;
            background-color: aliceblue;
        }

        /* .b1 .imgbox {
            height: 100%;
            width: 100%;
            background-color: aqua;
        } */
        .read-more-btn{
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
        .read-more-btn hover{
            background-color: aqua;
        }

        /* .college-btn {
            display: inline-block;
            color: #fff;
            background-color: white;
            border: none;
        border-radius: 5px;
             padding: 12px 20px; 
            font-size: 14px;
            cursor: pointer;
            margin-left: 40px;
        } */
        h2{
            padding: 10px;
            font-size: 30px;
            text-align: center;
            margin: 10px auto;
        }
        .search-container {
            display: flex;
            align-items: center;
            justify-content: center;
            /*        height: 100vh;*/
        }

        /* Search box styling */
        .search-box {
            width: 300px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            font-size: 16px;
            outline: none;
            margin-top: 10px;
        }

        /* Search button styling */
        .search-button {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px;
            margin-left: 10px;
            cursor: pointer;
            outline: none;
        }

        /* Search button hover effect */
        .search-button:hover {
            background-color: #0056b3;
        }
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .pagination ul {
            list-style-type: none;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0;
            margin: 0;
        }

        .pagination li {
            margin: 0 5px;
        }

        .pagination a {
            display: block;
            padding: 5px 10px;
            text-decoration: none;
            color: #000;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
        }

        .pagination a:hover {
            background-color: #ddd;
        }
        .box p{
            font-size: 1.1em;
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
                    <a href="UserController?page=exit">Log Out</a>"UserController?page=exit">Log Out</a>
                </div>
            </div> 
            <a href="UserController?page=college">College</a>
            <a href="#">Course </a>
            <a href="UserController?page=home">Home</a>
        </div>

        <div class="container">
<!--            <div class="search-container">
                <input type="text" class="search-box" placeholder="Enter search query">
                <button class="search-button">Search</button>
            </div>-->
            <contents>
                <h2>List of college</h2>
                <a href="UserController?page=scholar">
                    <div class="box">
                        <div class="img-box">
                            <img src="British.jpg" alt="" width="100%" height="100%">
                        </div>
                        <p><b>ACCA, Cambridge GCE A Levels, Leeds Beckett University, UK</b></p>

                        <p>Thapathali, Kathmandu</p>
                    </div>
                </a>
                <div class="box">
                    <div class="img-box">
                        <img src="Nepal.jpg" alt="" width="100%" height="100%">
                    </div>
                    <p><b>   Nepal Engineering College, Pokhara University</b></p>

                    <p>Changunarayan, Bhaktapur</p>
                </div>
                <div class="box">
                    <div class="img-box">
                        <img src="Nepalcollege.jpg" alt="" width="100%" height="100%">
                    </div>
                    <p><b> Nepal College of Information Technology, Pokhara University</b></p>


                    <p>Balkumari, Lalitpur</p>
                </div>
                <div class="box">
                    <div class="img-box">
                        <img src="softwarica.jpg" alt="" width="100%" height="100%">
                    </div>
                    <p><b>  Softwarica College of IT and E-commerce,Coventry University, UK</b></p>


                    <p>Dillibazar, Kathmandu</p>
                </div>
                <div class="box">
                    <div class="img-box">
                        <img src="megacollege.jpg" alt="" width="100%" height="100%">
                    </div>
                    <p><b>    Nepal Mega College, Tribhuvan University</b></p>

                    <p>Babarmahal, Kathmandu</p>
                </div>
                <div class="box">
                    <div class="img-box">
                        <img src="khwopa.jpg" alt="" width="100%" height="100%">
                    </div>
                    <p><b>  Khwopa College, Tribhuvan University</b></p>
                    <br>
                    <p>Dekocha-6, Bhaktapur</p>
                </div>

            </contents>

        </div>
        <div class="pagination">
            <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="UserController?page=page-2">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
        <div class="blog-section">
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