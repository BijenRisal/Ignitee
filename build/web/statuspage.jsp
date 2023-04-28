
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


            .logo {
                font-size: 1.5em;
                /* font-weight: bold; */
                color: #fff;
                float: left;
            }

            /* Style for the container */
            .container {
                height: 400px;
                max-width: 800px;
                margin: 0 auto;
                padding: 20px;
            }

            /* Style for the table */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                margin-bottom: 20px
            }

            th,
            td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #f2f2f2;
            }

            /* Style for the home button */
            /*    .home-button {
                    height: 100px;
                    width: 200px;
                  display: block;
                  margin-top: 20px;
                
            }*/
            .home-btn {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                text-decoration: none;
                font-size: 16px;
                margin: 10px;
            }

            .home-btn:hover {
                background-color: #3e8e41;
            }

            .home-btn:focus {
                outline: none;
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

        </style>
    </head>
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
            <a href="#">College</a>
            <a href="#">Course </a>
            <a href="UserController?page=home">Home</a>
        </div>

        <div class="container">
            <h1>Scholarship Status</h1>


            <table>
                <tr>
                    <th>Scholarship Name</th>
                    <th>College</th>
                    <th>Status</th>

                </tr>
                <tr>
                    <td>Scholarship 1</td>
                    <td>College Name</td>
                    <td>Accepted</td>

                </tr>
                <tr>
                    <td>Scholarship 2</td>
                    <td>Rejected</td>
                    <td>Information about Scholarship 2</td>
                </tr>
                <tr>
                    <td>Scholarship 3</td>
                    <td>Pending</td>
                    <td>Information about Scholarship 3</td>
                </tr>
                <!-- Add more rows for other scholarships with their respective status and information -->
            </table>

            <a href="UserController?page=home" class="home-btn">Home</a>
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