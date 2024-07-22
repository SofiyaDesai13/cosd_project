<%-- 
    Document   : Support Team Home
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@page import="com.demo.ticketingsystem.SupportRegistrationForm"%>
<%@include file="navigation.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Support Home</title>
</head>
<body>
    <h2>Support Home</h2>
    <form action="viewRelatedTicket.jsp" method="post">
        <input type="submit" value="View related tickets">
    </form>
    <form action="createTicket.jsp" method="post">
        <input type="submit" value="Open new ticket">
    </form>
    <form action="edit.jsp" method="post">
        <input type="submit" value="Edit ticket">
    </form>
    <form action="userInfo.jsp" method="post">
        <input type="submit" value="Change Password">
    </form>
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>

