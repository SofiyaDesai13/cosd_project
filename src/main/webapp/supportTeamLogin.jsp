<%-- 
    Document   : Support Team Login
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Support Team Login</title>
</head>
<body>
    <h2>Support Team Login</h2>
    <form action="sptLoginStatus.jsp" method="post">
        Email: <input type="text" name="email"><br>
        Password: <input type="password" name="password"><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>

<%@ include file="supportregister.jsp" %>