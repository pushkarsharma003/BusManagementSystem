<%-- 
    Document   : Logout
    Created on : Mar 29, 2019, 5:47:51 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession hs=request.getSession();
    hs.removeAttribute("username");
    hs.invalidate();
    response.sendRedirect("LandingPage.html");
%>
