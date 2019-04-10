<%-- 
    Document   : DisableDirectAccess
    Created on : Mar 29, 2019, 7:54:44 PM
    Author     : PushkarSharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession gs =request.getSession();
    Object tempUser=gs.getAttribute("username");
    if(tempUser==null)
    {
        response.sendRedirect("LandingPage.html");
    }
%>