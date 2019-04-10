<%-- 
    Document   : details
    Created on : Apr 1, 2019, 1:45:26 PM
    Author     : PushkarSharma
--%>

<%@page import="java.util.List"%>
<%@page import="Bms.checkbusdetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                  List<checkbusdetails>l1=(List<checkbusdetails>)request.getAttribute("list1");
                  for(checkbusdetails c:l1){
                      out.print("hi");
                      out.println(c.getBusno()+" "+c.getConductorname()+" "+c.getDrivermob()+" "+c.getDrivername()+" "+c.getRoute()+" "+c.getTime()+" "+c.getRouteno());
                  }
                  
              %>