<%-- 
    Document   : Answer Ticket
    Created on : 2 May 2024, 10:54:28?am
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Answer Ticket</title>
</head>
<body>
    <h2>Answer Ticket</h2>
    <form action="ticketAnswer.jsp" method="post">
        Enter your Ticket Id: <input type="text" name="ticketId"><br>
        Enter your Query: <input type="text" name="query"><br>
        Additional Comments: <input type="text" name="comments"><br>
        <input type="submit" value="submit">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>