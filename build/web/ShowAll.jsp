<%-- 
    Document   : ShowAll
    Created on : Apr 4, 2019, 1:09:52 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession s=request.getSession();
    s.setAttribute("ShowAll",999);
    response.sendRedirect("Home.jsp");
%>