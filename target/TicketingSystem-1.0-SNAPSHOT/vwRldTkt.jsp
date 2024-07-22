<%-- 
    Document   : View Ticket
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>View Tickets</title>
</head>
<body>
    <h2>Tickets Dashboard</h2>
    <form action="answerTicket.jsp" method="post">
        <input type="submit" value="Answer Ticket">
    </form>
    <form action="changeDpt.jsp" method="post">
        <input type="submit" value="Change Department">
    </form>
    <form action="closeTicket.jsp" method="post">
        <input type="submit" value="Close Ticket">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>