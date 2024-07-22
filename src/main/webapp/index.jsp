<%-- 
    Document   : Index
    Created on : 5 May 2024, 9:22:11 pm
    Author     : sofiyadesai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navigation.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Ticketing System Application</title>
    </head>
    <body>
        <h1>Welcome to Ticketing System Application!</h1><br>
        <h2>Login to Application</h2>
            <form action="userLogin.jsp" method="post">
                <input type="submit" value="User Login"><br><br>
            </form>
            <form action="supportTeamLogin.jsp" method="post">
                <input type="submit" value="Support Team Login"><br><br>
            </form>
            <form action="adminLogin.jsp" method="post">
                <input type="submit" value="Admin Login"><br><br>
            </form>
    </body>
</html>