<%-- 
    Document   : DeleteBusDetails
    Created on : Apr 2, 2019, 7:22:14 PM
    Author     : PushkarSharma
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="Admin.BusDetails"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
        <title>Delete Bus Details</title>
        <style>
            body{
                font-family: verdana;
                margin: 0px;
            }
            .table{
            color:dodgerblue;
            margin-left:120px;
            margin-right:120px;
        }
        .data{
            text-align: center;
        }
        .input{
        padding:12px 30px;
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
        cursor: pointer;
        font-weight: bold;
        font-family: arial;
      }
        </style>
    </head>
    <body>
        <%@include file="AdminNavbar.jsp"%>
        <div class="data">
            <br>
            <h3 style="color:dodgerblue">Delete Bus Schedule</h3>
        <div class="table">
              <%
                  BusDetails bd=new BusDetails();
                  Configuration cf=new Configuration();
                  cf.configure("BmsCfg/AdminAddDetails.cfg.xml");
                  SessionFactory sf=cf.buildSessionFactory();
                  Session s=sf.openSession();
                  Transaction tx=s.beginTransaction();
                  Query query=s.createQuery("from BusDetails");
                  List<BusDetails>bus =query.list();
                  out.println("<style>table,th,td{border:1px solid black;border-collapse:collapse;}th,td{padding:20px;}</style>");
                  out.print("<h4 style='color:red'>Bus Schedule Details</h4>");
                  out.println("<table>");
                    out.println("<tr style='color:green'>");
                    out.println("<th>Route Number</th><th>Route</th><th>Bus Number</th>");
                    out.println("<th>Driver Name</th><th>Driver Mobile</th><th>Conductor Name</th>");
                    out.println("<th>Bus Time</th>");
                  for (BusDetails b:bus){
                    out.println("<tr>");
                    out.println("<td>"+b.getRouteNo()+"</td>");
                    out.println("<td>"+b.getRoute()+"</td>");
                    out.println("<td>"+b.getBusNo()+"</td>");
                    out.println("<td>"+b.getDriverName()+"</td>");
                    out.println("<td>"+b.getDrivermobile()+"</td>");
                    out.println("<td>"+b.getConductorName()+"</td>");
                    out.println("<td>"+b.getBusTime()+"</td>");
                    out.println("</tr>");
                  }
                  out.println("</tr>");
                    out.println("</table>");
                    out.println("<br>");
                  tx.commit();
              %>
              <br>
              <form action="DeleteBusDetails" method="post">
                <input type="number" name="routeno" class="input" placeholder="Enter Route Number"><br><br>
                <p style="color:orange;font-size: 12px;">
              <%
                HttpSession h=request.getSession();
                if(h.getAttribute("BusDeleted")!=null){
                    out.print("*Bus details deleted successfully");
                    h.removeAttribute("BusDeleted");
                }
                else if (h.getAttribute("NotFound")!=null){
                    out.print("*Route not found");
                    h.removeAttribute("NotFound");
                }
            %>
            </p>
                <input type="submit" value="Delete" title="Ready to delete" class="submit">
                </form>
              </div>
            </div>
              <br>
              <%@include file="Footer.jsp"%>
    </body>
</html>
