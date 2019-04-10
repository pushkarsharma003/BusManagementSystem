<%-- 
    Document   : DeleteStudentDetails
    Created on : Apr 3, 2019, 2:51:07 PM
    Author     : PushkarSharma
--%>

<%@page import="java.util.List"%>
<%@page import="Admin.userlogindata"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="fontawesome-free-5.7.2-web\css\all.css">
    <link rel="icon" type="image/ico" href="images/logo.png"/>
        <title>Delete Student User</title>
        <style>
            body{
                font-family: verdana;
                margin: 0px;
            }
            .data{
                text-align: center;
            }
            .table{
            color:dodgerblue;
            margin-left:230px;
            margin-right:230px;
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
            <h3 style="color:dodgerblue">Delete Student User</h3>
            <div class="table">
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
              <br>
              <form action="DeleteStudent" method="post">
                <input type="number" name="id" class="input" placeholder="Enter Id Number"><br><br>
                <p style="color:orange;font-size: 12px;">
              <%
                HttpSession h=request.getSession();
                if(h.getAttribute("StudentDeleted")!=null){
                    out.print("*Student deleted successfully");
                    h.removeAttribute("StudentDeleted");
                }
                else if (h.getAttribute("NotFoundStu")!=null){
                    out.print("*Id not found");
                    h.removeAttribute("NotFoundStu");
                }
            %>
            </p>
                <input type="submit" value="Delete" title="Ready to delete" class="submit">
                </form>
        </div>
        <%@include file="Footer.jsp"%>
    </body>
</html>
