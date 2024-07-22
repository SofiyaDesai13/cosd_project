<%-- 
    Document   : Home
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@page import="com.demo.ticketingsystem.UserRegistrationForm"%>
<%@include file="navigation.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
    <h2>Home</h2>
    <form action="createTicket.jsp" method="post">
        <input type="submit" value="Create Ticket">
    </form>
    <form action="viewTicket.jsp" method="post">
        <input type="submit" value="View Ticket">
    </form>
    <form action="userInfo.jsp" method="post">
        <input type="submit" value="Change User Information">
    </form>
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
    <form action="deleteUser.jsp" method="post">
        <input type="submit" value="Delete Account">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>

