<%-- 
    Document   : UserSignin
    Created on : Mar 30, 2019, 7:59:46 AM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
  <head>
    <title>User Sign in</title>
    <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
    <style>
      .signin{
        background-color: white;
        height:500px;
        width:450px;
        position: absolute;
        left:450px;
        top:80px;
        border:1px solid lightgray;
        border-radius: 10px;
        text-align: center;
      }
      .form{
        margin:40px;
        border:none;
        height: 85%;
        width: 80%;
      }
      body{
        margin:0;
        font-family: verdana;
        background-image: url("signinimage.jpg");
        background-size: cover;
      }
      .input{
        height: 40px;
        width:70%;
        border-radius: 5px;
        border:none;
        font-size: 16px;
        border:2px solid lightgray;
      }
      .input:focus{
        border:2px solid dodgerblue;
        background-color: white;
      }
      .submit{
        padding: 10px 22px;
        border-radius: 6px;
        border:1px solid silver;
        background-color: dodgerblue;
        color: white;
        font-size: 16px;
        position: absolute;
        left:300px;
        cursor: pointer;
        font-weight: bold;
        font-family: arial;
      }
      .logo{
        height: 90px;
        width: 175px;        
      }
      .h{
          font-family: arial;
          font-weight: normal;
          font-size: 28px;
      }
      .fp{
          color:dodgerblue;
          font-weight: bold;
          font-family: arial;
          text-decoration: none;
          position: absolute;
          left:90px;
      }
      .Ad{
          color:orange;
          font-family: arial;
          text-decoration: underline;
          position: absolute;
          left:90px;
          font-size: 13px;
      }
      .p{
        font-family: arial;
        font-size: 10px;
    }
    .logfail{
        color:red;
        font-size:9px;
    }
    </style>
    <script>
      function validateform(){
        var x=document.forms["signinform"]["username"].value;
        var y=document.forms["signinform"]["password"].value;
        if(x==="" | y===""){
          alert("Username and Password can't be empty!!! please fill both");
          return false;
        }
      }
    </script>
  </head>
  <body>
    <div class="signin">
      <div class="form">
          <img src="images/logo.png" class="logo"/>
          <p class="h">Sign in</p>
        <form action="UserSignin" name="signinform" onsubmit="return validateform()" method="post">
          <input type="text" name="username" title="Username" placeholder="Username" class="input"><br><br>
          <input type="password" name="password" title="Password" placeholder="Password" class="input"><br>
        <p class="logfail">
        <% 
            HttpSession hts=request.getSession();
            Object logf=hts.getAttribute("LoginFailed");
            if(logf!=null)
            {
                out.println("*Login failed");
                out.println("<br>");
                hts.removeAttribute("LoginFailed");
            }
        %>
          </p>
          <a href="#" class="fp" title="Forgot password">Forgot password?</a><br><br>
          <a href="AdminSignin.jsp" class="Ad" title="Sign in as Admin">No, I am a Admin</a><br>
          <input type="submit" class="submit" title="Continue to Home" value="Continue">
          <br><br><br>
          <p class="p">
          Note:- By sign in, you agreed to our Terms & Conditions
          <a href="#">Learn more</a><br><br>
          </p>
        </form>
      </div>
    </div>
  </body>
</html>
