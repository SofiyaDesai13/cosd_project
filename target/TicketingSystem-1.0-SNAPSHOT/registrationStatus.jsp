<%-- 
    Document   : Register Status
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>

<%@page import="com.demo.ticketingsystem.UserRegistrationForm"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>

<%
    String fullname = request.getParameter("fullname");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    UserRegistrationForm user = new UserRegistrationForm(fullname, email, password);

    Session hibSession = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;
    try {
        tx = hibSession.beginTransaction();
        hibSession.save(user);
        tx.commit();
    } catch (Exception e) {
        if (tx != null) tx.rollback();
        e.printStackTrace();
    } finally {
        hibSession.close();
    }
%>

<html>
<head>
    <title>Registration Success</title>
</head>
<body>
    <h2>Registration Successful</h2>
    <p>Congratulations, you have successfully registered!</p>
    <p><a href="userLogin.jsp">Login</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>