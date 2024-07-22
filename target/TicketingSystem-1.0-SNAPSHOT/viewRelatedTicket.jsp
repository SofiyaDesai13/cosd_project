<%-- 
    Document   : View Related Ticket
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>View Related Tickets</title>
</head>
<body>
    <h2>Tickets Dashboard</h2>
    <form action="download.jsp" method="post">
        <input type="submit" value="Download Report">
    </form>
    <form action="answerTicket.jsp" method="post">
        <input type="submit" value="Answer Ticket">
    </form>
    <form action="closeTicket.jsp" method="post">
        <input type="submit" value="Close Ticket">
    </form>
    <form action="feedback.jsp" method="post">
        <input type="submit" value="Feedback">
    </form>
    <p><a href="supportHome.jsp">Support Home</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>