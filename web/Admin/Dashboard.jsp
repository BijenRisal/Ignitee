<%-- 
    Document   : ViewUser
    Created on : Mar 28, 2023, 10:47:33 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <title>Document</title>
        
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

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            color: #333;
            text-decoration: none;
        }

        a:hover {
            color: #000;
            text-decoration: underline;
        }
        .delete-popup {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: none;
  justify-content: center;
  align-items: center;
}

.delete-popup-content {
  background-color: white;
  padding: 20px;
  border-radius: 5px;
  text-align: center;
}

.delete-buttons {
  margin-top: 20px;
}

.delete-btn {
/*  background-color: red;
  color: white;
  padding: 10px;*/
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.delete-confirm, .delete-cancel {
  background-color: red;
  color: white;
  padding: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.delete-confirm {
  background-color: green;
  margin-right: 10px;
}

.delete-popup.show {
  display: flex;
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
                <section>
                    <h2>List of Users</h2>
                    <table>
                        <thead>
                            <tr>
                                
                                <th>Name</th>
                                <th>Email</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${userList}" var="user">
                            <tr>
                              
                                <td>${user.name}</td>
                                <td>${user.email}</td>
                                <td><a href="AdminController?page=apply&id=${user.id}">View</a> | <a href="AdminController?page=delete&id=${user.id}" class="delete-btn">Delete</a></td>
                           <div class="delete-popup">
                                <div class="delete-popup-content">
                                    <h2>Are you sure you want to delete?</h2>
                                    <div class="delete-buttons">
                                        <button class="delete-confirm">Yes</button>
                                        <button class="delete-cancel">No</button>
                                    </div>
                                </div>
                            </div>
                            </tr>
                            </c:forEach>
                            
                        </tbody>
                    </table>
                </section>
            </div>
        </div>

    </body>
<script>
    const deleteBtn = document.querySelector('.delete-btn');
const deletePopup = document.querySelector('.delete-popup');
const deleteConfirm = document.querySelector('.delete-confirm');
const deleteCancel = document.querySelector('.delete-cancel');

deleteBtn.addEventListener('click', () => {
  deletePopup.classList.add('show');
});

deleteConfirm.addEventListener('click', () => {
  // Code to delete item
  deletePopup.classList.remove('show');
});

deleteCancel.addEventListener('click', () => {
  deletePopup.classList.remove('show');
});

    </script>
</html>
