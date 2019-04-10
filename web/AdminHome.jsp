<%-- 
    Document   : AdminHome
    Created on : Apr 1, 2019, 2:21:59 PM
    Author     : PushkarSharma
--%>

<%@page import="Admin.userlogindata"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="Admin.BusDetails"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
    <title>Home</title>
    <style>
        body{
            margin:0px;
            font-family: verdana;
        }
        .table{
            color:dodgerblue;
            margin-left:150px;
            margin-right:150px;
        }
        .data{
            text-align: center;
            justify-content: center;
        }
        .table2{
            color:dodgerblue;
            margin-left:230px;
            margin-right:230px;
        }
        </style>
    <body>
        <%@include file="AdminNavbar.jsp"%><br>
      <div class="data">
          <img src="images/adminportal.jpg" style="text-align:center;"><br>
              <div class="table">
              <%
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
                  s.close();
                  sf.close();
              %>
              </div>
              <br><br>
              <div class="table2">
              <%
                  Configuration cfc=new Configuration();
                  cfc.configure("BmsCfg/AddStudent.cfg.xml");
                  SessionFactory sfs=cfc.buildSessionFactory();
                  Session ss=sfs.openSession();
                  Transaction txt=ss.beginTransaction();
                  Query queryy=ss.createQuery("from userlogindata");
                  List<userlogindata> stu = queryy.list();
                  out.println("<style>table,th,td{border:1px solid black;border-collapse:collapse;}th,td{padding:20px;}</style>");
                  out.print("<h4 style='color:red'>Student user details</h4>");
                  out.println("<table>");
                    out.println("<tr style='color:green'>");
                    out.println("<th>Username</th><th>Password</th><th>Id</th>");
                    out.println("<th>Batch</th><th>Mobile Number</th><th>Email</th>");
                  for (userlogindata uld : stu){
                    out.println("<tr>");
                    out.println("<td>"+uld.getUsername()+"</td>");
                    out.println("<td>"+uld.getPassword()+"</td>");
                    out.println("<td>"+uld.getId()+"</td>");
                    out.println("<td>"+uld.getBatch()+"</td>");
                    out.println("<td>"+uld.getMobileno()+"</td>");
                    out.println("<td>"+uld.getEmail()+"</td>");
                    out.println("</tr>");
                  }
                  out.println("</tr>");
                    out.println("</table>");
                    out.println("<br>");
                  txt.commit();
                  ss.close();
                  sfs.close();
              %>
              </div>
      </div>
              <%@include file="Footer.jsp" %>
  </body>
</html>