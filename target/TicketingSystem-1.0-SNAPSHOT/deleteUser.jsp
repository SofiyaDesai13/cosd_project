<%-- 
    Document   : User Login
    Created on : 7 July 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User Account</title>
</head>
<body>
    <h2>Delete User Account</h2>
    <form action="deleteUserAccount.jsp" method="post">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required />
        <input type="submit" value="Delete User" />
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>