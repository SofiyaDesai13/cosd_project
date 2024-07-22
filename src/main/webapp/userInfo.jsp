<%-- 
    Document   : Update Password
    Created on : 13 Apr 2024, 6:46:12?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Change User Password</title>
</head>
<body>
    <h2>Change User Password</h2>
    <form action="updatepassStatus.jsp" method="post">
        <label for="email">Enter your email:</label>
        <input type="email" id="email" name="email" required><br>
        
        <label for="currentPassword">Current Password:</label>
        <input type="password" id="currentPassword" name="currentPassword" required><br>

        <label for="password">Enter new Password:</label>
        <input type="password" id="password" name="password" required><br>

        <label for="password">Confirm new Password:</label>
        <input type="password" id="password" name="password" required><br>
        
        <input type="hidden" name="source" value="abc">
        <input type="submit" value="Change User Data">
    </form>
    <p>Login again after setting up new password!</p>
</body>
</html>

<%@ include file="authentication.jsp" %>