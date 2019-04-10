<%-- 
    Document   : NavBar
    Created on : Mar 28, 2019, 2:21:35 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
    <style>
    body{
      margin: 0;
      background-size: cover;
      font-family: verdana;
    }
    .nav{
      height:40px;
      width:100%;
      font-family: verdana;
      background-color: lightgray;
    }
    .btn{
      height: 100%;
      width: 25%;
      border: none;
      color: dodgerblue;
      background-color: lightgray;
      cursor: pointer;
      margin: 0px;
      float: left
    }
    .btn:hover{
      border:none;
      font-weight: bold;
      font-style: normal;
      background-color: dodgerblue;
      color: white;
    }
    .lout{
        font-size: 16px;
        float:right;
        position :relative;
        right:20px;
        top:25px;
    }
    .loutbtn{
        text-decoration: none;
        color:dodgerblue;
        font-weight:bolder;
        font-family: arial;
    }
    .loutbtn:hover{
        color:red;
        
    }
    </style>
  </head>
  <body>
      <img src="images/logo.png" style="margin-left:10px"/>
      <p class="lout">
    Welcome
    <i class="fa fa-user"></i> [
      <% 
        HttpSession hs=request.getSession();
        Object user=hs.getAttribute("username");
        out.print(user);
      %>
      ]
      <a href="Logout.jsp" class="loutbtn" title="Logout">[ Logout ]</a>
      </p>
      <div class="nav">
        <a href="Home.jsp"><button class="btn" title="Home"><i class="fa fa-home"></i> Home</button></a>        
        <a href="MyProfile.jsp"><button class="btn" title="My Profile"><i class="fa fa-user"></i> My Profile</button></a>
        <a href="AboutUs.jsp"><button class="btn" title="About Us"><i class="fa fa-info"></i> About Us</button></a>
        <a href="ContactUs.jsp"><button class="btn" title="Contact Us"><i class="fa fa-phone"></i> Contact Us</button></a>
      </div>
  </body>
</html>
