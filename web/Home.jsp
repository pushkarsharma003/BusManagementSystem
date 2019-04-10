<%-- 
    Document   : Home
    Created on : Mar 28, 2019, 2:20:18 PM
    Author     : PushkarSharma
--%>

<%@page import="Admin.BusDetails"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="Bms.checkbusdetails"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="NavBar.jsp"%>
<% 
        response.setHeader("Pragma","no-cache");
        HttpSession h=request.getSession();
        h.removeAttribute("LoginFailed");
    %>
<!DOCTYPE html>
<html>
    <%@include file="DisableDirectAccess.jsp"%>
  <head>
    <title>Home</title>
    <style>
        .data{
            display: flex;
        }
        .right{
        flex:3;
        height: 500px;
        text-align: center;
    }
        .left{
        flex:1;
        height: 520px;
        border-right: 2px solid lightgray;
        }
        .spanel{
            color: dodgerblue;
            position: relative;
            left:70px;
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
        left:220px;
        cursor: pointer;
        font-weight: bold;
        font-family: arial;
        margin-top: 15px;
      }
      .show{
          padding: 10px 22px;
        border-radius: 6px;
        border:1px solid silver;
        background-color: dodgerblue;
        color: white;
        position:relative;
        font-size: 16px;
        left:40px;
        cursor: pointer;
        font-weight: bold;
        font-family: arial;
        margin-top: 15px;
      }
    </style>
    <body>
      <div class="data">
          <div class="left">           
              <br>
              <h2 class="spanel">Search Panel</h2>
              <c style="margin-left:15px;">Search All Schedules</c>
              <a href="ShowAll.jsp" ><button class="show" title="Show all">Show</button></a>
              <br><br>
              <p style="margin-left:15px;">Search By Route Number</p>                            
              <form action="SearchbyRouteNo">
                  <input type="int" name="routeno" placeholder="Enter Route Number" style="margin-left:15px;margin-top: 5px" class="input" required><br>
                  <input type="submit" value="Search" class="submit" title="Search now">
                </form>
              <br><br><br><br>
              <p style="margin-left:15px;">Search By Route</p>                            
              <form action="SearchbyRoute">
                  <input type="text" name="route" placeholder="Enter Route" style="margin-left:15px;margin-top: 5px" class="input" required><br>
                  <input type="submit" value="Search" class="submit" title="Search now">
                </form>
              </div>
          <div class="right">
              <br>
              <p style="color:green;font-size: 12px;font-family: cursive">*your search results will appear here</p>
        <%
            String rt=(String) request.getAttribute("routeno");
            if(rt!=null){
        int r=Integer.parseInt(rt);
        Configuration cf=new Configuration();
        cf.configure("BmsCfg/AdminAddDetails.cfg.xml");
        SessionFactory sf=cf.buildSessionFactory();
        Session s=sf.openSession();
        Transaction tx=s.beginTransaction();
        Query query=s.createQuery("from BusDetails where RouteNo='"+r+"'");
        List<BusDetails> sb=query.list();
        out.println("<style>table,th,td{border:1px solid black;margin:15px;border-collapse:collapse;}th,td{padding:15px}</style>");
        out.print("<h4 style='color:red'>Bus Schedule Details</h4>");
        out.println("<table>");
        out.println("<tr style='color:green'>");
        out.println("<th>Route Number</th><th>Route</th><th>Bus Number</th>");
        out.println("<th>Driver Name</th><th>Driver Mobile</th><th>Conductor Name</th>");
        out.println("<th>Bus Time</th>");        
        String temp=(String)request.getAttribute("routeno");
        temp="";
        int flag=1;
        request.removeAttribute("routeno");
        for (BusDetails bd : sb){
            if(bd.getRouteNo()==r){
                out.println("<tr>");
                    out.println("<td>"+bd.getRouteNo()+"</td>");
                    out.println("<td>"+bd.getRoute()+"</td>");
                    out.println("<td>"+bd.getBusNo()+"</td>");
                    out.println("<td>"+bd.getDriverName()+"</td>");
                    out.println("<td>"+bd.getDrivermobile()+"</td>");
                    out.println("<td>"+bd.getConductorName()+"</td>");
                    out.println("<td>"+bd.getBusTime()+"</td>");
                    out.println("</tr>");
                    flag=0;
                }
                out.println("</tr>");
                out.println("</table>");
                out.println("<br>");
                if(flag==1){
                    out.print("not found");
                }
                tx.commit();
                s.close();
                sf.close();
            }
        } 
        %>
        
        <%
            HttpSession gh=request.getSession();
            Object o=gh.getAttribute("ShowAll");
            if(o!=null){
                Configuration cfc=new Configuration();
                  cfc.configure("BmsCfg/AdminAddDetails.cfg.xml");
                  SessionFactory sfs=cfc.buildSessionFactory();
                  Session ss=sfs.openSession();
                  Transaction tx=ss.beginTransaction();
                  Query query=ss.createQuery("from BusDetails");
                  List<BusDetails>bus =query.list();
                  out.println("<style>table,th,td{border:1px solid black;margin:15px;border-collapse:collapse;}th,td{padding:15px;}</style>");
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
                  ss.close();
                  sfs.close();
                  gh.removeAttribute("ShowAll");
            }
        %>
        
        <%
            String rtr=(String)request.getAttribute("route");
            if(rtr!=null){        
        Configuration cff=new Configuration();
        cff.configure("BmsCfg/AdminAddDetails.cfg.xml");
        SessionFactory sff=cff.buildSessionFactory();
        Session s3=sff.openSession();
        Transaction txx=s3.beginTransaction();
        Query qy=s3.createQuery("from BusDetails where Route='"+rtr+"'");
        List<BusDetails> sb=qy.list();
        out.println("<style>table,th,td{border:1px solid black;margin:15px;border-collapse:collapse;}th,td{padding:15px}</style>");
        out.print("<h4 style='color:red'>Bus Schedule Details</h4>");
        out.println("<table>");
        out.println("<tr style='color:green'>");
        out.println("<th>Route Number</th><th>Route</th><th>Bus Number</th>");
        out.println("<th>Driver Name</th><th>Driver Mobile</th><th>Conductor Name</th>");
        out.println("<th>Bus Time</th>");        
        String temp=(String)request.getAttribute("route");
        temp="";
        int flag=1;
        request.removeAttribute("route");
        for (BusDetails bd : sb){
            if(bd.getRoute().equals(rtr)){
                out.println("<tr>");
                    out.println("<td>"+bd.getRouteNo()+"</td>");
                    out.println("<td>"+bd.getRoute()+"</td>");
                    out.println("<td>"+bd.getBusNo()+"</td>");
                    out.println("<td>"+bd.getDriverName()+"</td>");
                    out.println("<td>"+bd.getDrivermobile()+"</td>");
                    out.println("<td>"+bd.getConductorName()+"</td>");
                    out.println("<td>"+bd.getBusTime()+"</td>");
                    out.println("</tr>");
                    flag=0;
                }
                out.println("</tr>");
                out.println("</table>");
                out.println("<br>");
                if(flag==1){
                    out.print("not found");
                }
                txx.commit();
                s3.close();
                sff.close();
            }
        } 
        %>
          </div>
      </div>
        <%@include file="Footer.jsp" %>
  </body>
</html>
