<%-- 
    Document   : Register
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>
<html>
<head>
<meta charset="UTF-8">
<title>Support Team Registration</title>
<script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body>
    <div class="container">
        <h2>Support Team Registration</h2>
        <form action="supportregStatus.jsp" method="post">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="fullname" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <div class="g-recaptcha" data-sitekey="6LeI2LkpAAAAAIUiZ8b-ufDcv1ht_JoZIHa3FD3X"></div><br>

            <input type="checkbox" id="terms" name="terms" required>
            <label for="terms">I accept the terms and conditions.</label><br>

            <input type="submit" value="Register">
        </form>
        <p>Already have an account? <a href="supportTeamLogin.jsp">Support Team Login</a>.</p>
    </div>
</body>
</html>