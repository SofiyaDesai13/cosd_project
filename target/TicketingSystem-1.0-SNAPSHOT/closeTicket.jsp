<%-- 
    Document   : Close Ticket
    Created on : 2 May 2024, 10:54:28?am
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Close Ticket</title>
</head>
<body>
    <h2>Close Ticket</h2>
    <form action="closetktStatus.jsp" method="post">
        Enter Ticket Id to close: <input type="text" name="ticketId"><br>
        <input type="submit" value="close">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>