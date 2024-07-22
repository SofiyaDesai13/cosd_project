<%-- 
    Document   : Admin Home
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@page import="com.demo.ticketingsystem.AdminRegistrationForm"%>
<%@include file="navigation.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Administrator Home</title>
</head>
<body>
    <h2>Administrator Home</h2>
    <form action="seeAllTickets.jsp" method="post">
        <input type="submit" value="See All Tickets">
    </form>
    <form action="checkUsrfdk.jsp" method="post">
        <input type="submit" value="Check User Feedback">
    </form>
    <form action="asSptTm.jsp" method="post">
        <input type="submit" value="Assign Support Team">
    </form>
    <form action="userInfo.jsp" method="post">
        <input type="submit" value="Change User Information">
    </form>
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>