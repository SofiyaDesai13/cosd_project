<%-- 
    Document   : User Login
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
</head>
<body>
    <h2>User Login</h2>
    <form action="usrLoginStatus.jsp" method="post">
        Email: <input type="text" name="email"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>

<%@ include file="register.jsp" %>