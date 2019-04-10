<%-- 
    Document   : LogoutAdmin
    Created on : Apr 2, 2019, 1:48:28 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession ht=request.getSession();
    ht.removeAttribute("AdminLogedin");
    response.sendRedirect("LandingPage.html");
%>