<%-- 
    Document   : New Ticket Status 
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>

<%@page import="com.demo.ticketingsystem.NewTicketForm"%>
<%@page import="com.demo.ticketingsystem.Utility"%>

<%
    NewTicketForm newticket = (NewTicketForm)Utility.extractObjectFromRequest(NewTicketForm.class, request);
    session.setAttribute("newticket", newticket);
%>


<html>
<head>
    <title>New Ticket Created Successfully</title>
</head>
<body>
    <h2>New Ticket Created Successfully</h2>
    <p>Congratulations, you have successfully opened new ticket!</p>
    <p><a href="supportHome.jsp">Home</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>