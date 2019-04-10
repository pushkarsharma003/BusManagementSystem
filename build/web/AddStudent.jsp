<%-- 
    Document   : AddStudent
    Created on : Apr 3, 2019, 6:21:08 AM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
        <title>Add Student User</title>
        <style>
            body{
                font-family: verdana;
                margin: 0px;
            }
        .data{
        background-color: white;
        height:580px;
        width:450px;
        position: relative;
        left:450px;
        top:40px;
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
      .h{
          font-family: arial;
          font-weight: bold;
          font-size: 22px;
          color:dodgerblue;
      }
      .cancel{
          padding: 10px 22px;
        border-radius: 6px;
        border:1px solid silver;
        background-color: dodgerblue;
        color: white;
        font-size: 16px;
        position: absolute;
        left:60px;
        cursor: pointer;
        font-weight: bold;  
        font-family: arial;
        text-decoration: none;
      }
        </style>
        <script>
      function validateform(){
        var x=document.forms["addstudent"]["username"].value;
        var y=document.forms["addstudent"]["password"].value;
        var z=document.forms["addstudent"]["id"].value;
        var w=document.forms["addstudent"]["batch"].value;
        if(x==="" | y==="" | z==="" | w===""){
          alert("Please fill all fields!!!");
          return false;
        }
      }
    </script>
    </head>
    <body>
        <%@include file="AdminNavbar.jsp"%>
        <div class="data">
            <p style="color:orange;font-size: 12px;">
              <%
                HttpSession h=request.getSession();
                if(h.getAttribute("studentAdded")!=null){
                    out.print("*Student user added successfully");
                }
                h.removeAttribute("studentAdded");
            %>
            </p>
            <div class="form">
          <p class="h">Add Student User</p>
          <form action="AddStudent" name="addstudent" method="post" onsubmit="return validateform()">
          <input type="text" name="username" title="Username" placeholder="Username" class="input"><br><br>
          <input type="password" name="password" title="Password" placeholder="Password" class="input"><br><br>
          <input type="number" name="id" title="Id" placeholder="Id" class="input"><br><br>
          <input type="number" name="batch" title="Batch" placeholder="Batch" class="input"><br><br>
          <input type="text" name="mobileno" title="Mobile Number" placeholder="Mobile Number" class="input"><br><br>
          <input type="text" name="email" title="Email" placeholder="Email" class="input"><br><br><br>
          <a href="AdminHome.jsp" class="cancel" title="back to Home">Cancel</a>
          <input type="submit" class="submit" title="Ready to add user" value="Continue">
        </form>
        </div>
            </div>
        <br><br><br>
        <%@include file="Footer.jsp"%>
    </body>
</html>
