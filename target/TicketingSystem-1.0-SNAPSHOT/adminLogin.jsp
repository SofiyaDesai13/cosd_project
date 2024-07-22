<%-- 
    Document   : Admin Login
    Created on : 5 May 2024, 9:18:22?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body>
    <h2>Admin Login</h2>
    <form action="adminloginStatus.jsp" method="post">
        Email: <input type="text" name="email"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>

<%@ include file="adminregister.jsp" %>