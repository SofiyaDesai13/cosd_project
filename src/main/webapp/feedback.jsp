<%-- 
    Document   : Feedback
    Created on : 2 May 2024, 10:54:28?am
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
</head>
<body>
    <h2>Feedback Form</h2>
    <form action="feedbackStatus.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="feedback">Feedback:</label><br>
        <textarea id="feedback" name="feedback" rows="4" cols="50" required></textarea><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>
