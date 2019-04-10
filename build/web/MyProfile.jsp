<%-- 
    Document   : Home
    Created on : Mar 28, 2019, 2:20:18 PM
    Author     : PushkarSharma
--%>

<%@page import="java.util.List"%>
<%@page import="Admin.userlogindata"%>
<%@page import="Admin.userlogindata"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="DisableDirectAccess.jsp"%>
<%@include file="NavBar.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>My Profile</title>
    <body>
        <style>
            .data{
            margin-left:170px;
            margin-right:170px;
            margin-top:20px;
            text-align: center;
        }
        </style>
      <div class="data">          
        <%
            HttpSession temp=request.getSession();
            if(temp.getAttribute("username")!=null){
            String s=(String)temp.getAttribute("username");
            int id=(Integer) temp.getAttribute("id");
            Configuration cf=new Configuration(); 
            cf.configure("BmsCfg/Bms.cfg.xml");
            SessionFactory sf=cf.buildSessionFactory();
            Session ms=sf.openSession();
            Transaction tx=ms.beginTransaction();
            Query q=ms.createQuery("from userlogindata where username='"+s+"' and id='"+id+"'");
            List<userlogindata> ud=q.list();
            for (userlogindata td : ud){
                if(td.getUsername().equals(s) && td.getId()==id){
                    out.print("<div style='text-align:left;border-radius:10px;height:600px;width:430px;position:relative;left:300px;top:40px;border:1px solid lightgray;font-size:20px'>");
                    out.print("<br><img src='images/User.png' style='position:relative;left:90px'>");
                    out.print("<center><p style='font-family: arial;font-size: 32px;color:dodgerblue;'>About Me</p></center>");
                    out.print("<br>");
                    out.print("<h style='margin-left:40px;font-size:26px;color:green'>Username : </h>"+"<h style='color:dodgerblue'>"+td.getUsername()+"</h>" );
                    out.print("<br>");
                    out.print("<h style='margin-left:40px;font-size:26px;color:green'>Batch : </h>"+"<h style='color:dodgerblue'>"+td.getBatch()+"</h>");
                    out.print("<br>");
                    out.print("<h style='margin-left:40px;font-size:26px;color:green'>Email : </h>"+"<h style='color:dodgerblue'>"+td.getEmail()+"</h>");
                    out.print("<br>");
                    out.print("<h style='margin-left:40px;font-size:26px;color:green'>Mobile Number : </h>"+"<h style='color:dodgerblue'>"+td.getMobileno()+"</h>");
                    out.print("</div>");
                }
            }
            tx.commit();
            ms.close();
            sf.close();
            }
        %>
      </div>
      <br><br><br><br><br>
        <%@include file="Footer.jsp" %>
  </body>
</html>
