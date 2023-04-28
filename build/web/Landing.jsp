<!DOCTYPE html>
<html>
  <head>
    <title>Home Page</title>
    <style>
      body {
        background-image: url("Tiny students sitting near books getting university degree.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
        
      }
      
      .container {
        width: 100%;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
/*        background-color: rgba(255, 255, 255, 0.8);*/
      }
      
      h1 {
        font-size: 3rem;
        margin-bottom: 2rem;
        text-align: center;
        color: blue;
      }
      
      .btn-container {
        display: flex;
        justify-content: center;
      }
      
      .btn {
        padding: 1rem 2rem;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 1.2rem;
        cursor: pointer;
        margin-right: 1rem;
        text-decoration: none;
      }
      
      .btn:hover {
        background-color: #3e8e41;
      }
    </style>
  </head>
  
  <body>
    <div class="container">
      <h1>Welcome to our Scholarship Management System</h1>
      <div class="btn-container">
        <a href="UserController?page=signin" class="btn">Login</a>
        <a href="UserController?page=register" class="btn">Sign Up</a>
      </div>
    </div>
  </body>
</html>
