<%-- 
    Document   : AddBusDetails
    Created on : Apr 1, 2019, 10:59:55 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
    <title>Add Bus Details</title>
    <style>
        body{
            margin:0px;
            font-family: verdana;
        }
        .data{
            text-align: center;
        }
        .frm{
            height:650px;
            width:500px;
            border:1px solid lightgray;
            border-radius: 10px;
            position: relative;
            left:450px;
            top:20px;
        }
        .input{
        height: 40px;
        width:60%;
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
        left:350px;
        cursor: pointer;
        font-weight: bold;  
        font-family: arial;
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
      .h{
          font-family: arial;
          font-weight: bold;
          font-size: 22px;
          color:dodgerblue;
      }
        </style>
        <script>
            function phonevalidation(){
                var phone=document.forms["AddBus"]["DriverMobile"].value;
                var p=/^(\([0-9]{3}\) | [0-9]{3}-)[0-9]{3}-[0-9]{3}-[0-9]{4}/;
                var ph=phone.match(p);
                if(p){
                    return true;
                }
                else {
                    alert("Enter valid Mobile Number");
                    return false;
                }
            }
        </script>
    <body>
        <%@include file="AdminNavbar.jsp"%><br>
      <div class="data">
           <p style="color:orange;font-size: 12px;">
              <%
                HttpSession h=request.getSession();
                if(h.getAttribute("created")!=null){
                    out.print("*Bus details added successfully");
                }
                h.removeAttribute("created");
            %>
            </p>
              <div class="frm">
                  <p class="h">Add Bus Details</p><br>
                  <form action="AddBusDetails" name="AddBus" onsubmit="return phonevalidation()">
                  <input type="text" name="Route" placeholder="Route" class="input" required><br><br>
                  <input type="number" name="RouteNo" placeholder="Route Number" class="input" required><br><br>
                  <input type="number" name="BusNo" placeholder="Bus Number" class="input" required><br><br>
                  <input type="text" name="DriverName" placeholder="Driver Name" class="input" required><br><br>
                  <input type="text" name="DriverMobile" placeholder="Driver Mobile" class="input" required><br><br>
                  <input type="text" name="ConductorName" placeholder="Conductor Name" class="input" required><br><br>
                  <input type="text" name="BusTime" placeholder="Bus Time" class="input" required><br><br><br>
                  <a href="AdminHome.jsp" class="cancel" title="back to Home">Cancel</a>
                  <input type="submit" value="Add" class="submit" title="ready to add details"><br>
                  
              </form>
                  
                </div>
              </div>
            <br>
            <br>
            <%@include file="Footer.jsp" %>
  </body>
</html>
