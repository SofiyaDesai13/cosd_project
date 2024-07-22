<%-- 
    Document   : Logout
    Created on : 14 Apr 2024, 12:39:21?pm
    Author     : sofiyadesai
--%>

<%@include file="navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session != null) {
        session.invalidate();
    }
    response.sendRedirect("index.jsp");
    out.println("User Successfully Logged Out");
%>
