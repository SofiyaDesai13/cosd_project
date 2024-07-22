<%-- 
    Document   : Feedback
    Created on : 2 May 2024, 10:54:28?am
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Users Feedback</title>
</head>
<body>
    <h2>Check Users Feedback</h2>
    <form action="feedbackview.jsp" method="post">        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>
