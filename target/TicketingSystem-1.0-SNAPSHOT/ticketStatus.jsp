<%-- 
    Document   : Ticket Status 
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>

<%@include file="navigation.jsp" %>
<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>

<%
    String ticketId = request.getParameter("ticketId");
    String title = request.getParameter("title");
    String department = request.getParameter("department");
    String severity = request.getParameter("severity");
    String description = request.getParameter("description");
    String attachment = request.getParameter("attachment");

    Ticket ticket = new Ticket(ticketId, title, department, severity, description, attachment);

    Session hibSession = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;
    try {
        tx = hibSession.beginTransaction();
        hibSession.save(ticket);
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
    <title>Ticket Created Successfully</title>
</head>
<body>
    <h2>Ticket Created Successfully</h2>
    <p>Congratulations, you have successfully created your ticket!</p>
    <p><a href="home.jsp">Home</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>