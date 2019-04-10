<%-- 
    Document   : AdminNavbar
    Created on : Apr 1, 2019, 11:38:49 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
        .navbar{
        width:100%;
        height:40px;
        background-color: lightgray;
        }
        .navbtn{
        height:40px;
        width:19.5%;
        font-family:arial;
        font-size: 14px;
        background-color: lightgray;
        color:dodgerblue;
        border:none;
        }
        .navbtn:hover{
            background-color: dodgerblue;
            color:white;
            cursor: pointer;
        }
        .AdminWelcome{
            font-size: 16px;
            float:right;
            position :relative;
            right:20px;
            top:25px;
        }
        .logoutbtn{
            padding: 8px 20px;
            border-radius: 10px;
            border:none;
            background-color: dodgerblue;
            color:white;
            cursor: pointer;
        }
        </style>
    </head>
    <body>
        <img src="images/logo.png"/>
        <p class="AdminWelcome">
            Welcome <i class="fa fa-user"></i> [
        <%
            HttpSession hs=request.getSession();
            String admin=(String)hs.getAttribute("AdminLogedin");
            if(admin!=null){    
                out.println(admin);
            }
            else{
                out.println("null");
            }
        %>]
        <a href="LogoutAdmin.jsp" title="Logout"><button class="logoutbtn">Logout</button></a>
        </p>
        <div class="navbar">
        <a href="AdminHome.jsp"><button class="navbtn" title="Home"><i class="fa fa-home"></i> Home</button></a>
        <a href="AddBusDetails.jsp"><button class="navbtn" title="Add Bus Details"><i class="fa fa-bus"></i> Add Bus</button></a>
        <a href="DeleteBusDetails.jsp"><button class="navbtn" title="Delete Bus Details"><i class="fa fa-bus"></i> Delete Bus</button></a>
        <a href="AddStudent.jsp"><button class="navbtn" title="Add student user"><i class="fa fa-user-plus"></i> Add Student</button></a>
        <a href="DeleteStudent.jsp"><button class="navbtn" title="Delete student user"><i class="fa fa-user-minus"></i> Delete Student</button></a>
        </div>
    </body>
</html>
