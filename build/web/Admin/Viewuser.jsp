<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
            font-family: 'Josefin Sans', sans-serif;
        }

        body {
            background-color: #f3f5f9;
        }

        .wrapper {
            display: flex;
            position: relative;
        }

        .wrapper .sidebar {
            width: 200px;
            height: 100%;
            background: #758cff;
            padding: 30px 0px;
            position: fixed;
        }

        .wrapper .sidebar h2 {
            color: #fff;
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 30px;
        }
        .wrapper .sidebar .profile{
            margin-bottom: 30px;
            text-align: center;
        }

        .wrapper .sidebar .profile img{
            display: block;
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin: 0 auto;
        }
        .wrapper .sidebar ul li {
            padding: 15px;
            border-bottom: 1px solid #bdb8d7;
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
            border-top: 1px solid rgba(255, 255, 255, 0.05);
        }

        .wrapper .sidebar ul li a {
            color: white;
            display: block;
        }

        .wrapper .sidebar ul li a .fas {
            width: 25px;
        }

        .wrapper .sidebar ul li:hover {
            background-color: #594f8d;
        }

        .wrapper .sidebar ul li:hover a {
            color: #fff;
        }

        /* .wrapper .sidebar .social_media{
      position: absolute;
      bottom: 0;
      left: 50%;
      transform: translateX(-50%);
      display: flex;
    }
    
    .wrapper .sidebar .social_media a{
      display: block;
      width: 40px;
      background: #594f8d;
      height: 40px;
      line-height: 45px;
      text-align: center;
      margin: 0 5px;
      color: #bdb8d7;
      border-top-left-radius: 5px;
      border-top-right-radius: 5px;
    } */

        .wrapper .main_content {
            width: 100%;
            margin-left: 200px;
        }

        .wrapper .main_content .header {
            padding: 20px;
            background: #fff;
            color: #717171;
            border-bottom: 1px solid #e0e4e8;
        }

        .wrapper .main_content .info {
            margin: 20px;
            color: #717171;
            line-height: 25px;
        }

        .wrapper .main_content .info div {
            margin-bottom: 20px;
        }
        section {
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px #ccc;
        }
        .container {
            margin: 20px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
        }

        .table th, .table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .table th {
            background-color: #4CAF50;
            color: white;
        }

        .table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table tr:hover {
            background-color: #ddd;
        }

        .back-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
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
        <div class="wrapper">
            <div class="sidebar">
                <!-- <div class="profile">
                 <img src="img.jpg" alt="">
                </div> -->
                <h2>IGNITE</h2>
                <ul>
                   <li><a href="AdminController?page=home">Home</a></li>
<!--                    <li><a href="profile.html">Profile</a></li>
                    <li><a href="#">Add Users</a></li>-->
                    <li><a href="AdminController?page=viewusers">View Users</a></li>
                    <li><a href="AdminController?page=update">Update Users</a></li>
                    <li><a href="AdminController?page=exit">Log out</a></li>
                </ul>
            </div>
            <div class="main_content">
                <div class="header">Welcome.</div>
                <div class="container">
                    <h2>Students' Applied Form</h2>
                    <table class="table">
                        <thead>
                            <tr>

                                <th>FirstName</th>
                                <th>LastName</th>
                                <th>Email</th>
                                <th>Birth Of Date</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th>School</th>
                                <th>college</th>
                                <!--<th>files</th>-->
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${detaillist}" var="details">
                                <tr>
                                    <td>${details.firstname}</td>
                                    <td>${details.lastname}</td>
                                    <td>${details.email}</td>  
                                    <td>${details.birthofdate}</td>
                                    <td>${details.phone}</td>
                                    <td>${details.address}</td>
                                    <td>${details.school}</td>
                                    <td>${details.college}</td>
                                    <!--<td>${details.upload}</td>-->
                                   <!--<td><a href="AdminController?page=apply&id=${user.id}">View</a> | <a href="#">Edit</a> | <a href="#">Delete</a></td>-->
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                    <button class="back-btn" onclick="goBack()">Go Back</button>
                </div>


            </div>
        </div>

    </body>
    <script>
        function goBack() {
            window.history.back();
        }

    </script>
</html>