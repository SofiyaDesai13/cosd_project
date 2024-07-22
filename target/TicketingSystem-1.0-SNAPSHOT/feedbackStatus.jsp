<%-- 
    Document   : Feedback Status
    Created on : 2 May 2024, 10:54:28?am
    Author     : sofiyadesai
--%>

<%@include file="navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="com.demo.ticketingsystem.FeedbackTicket"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String feedback = request.getParameter("feedback");

    FeedbackTicket fdk = new FeedbackTicket(name, email, feedback);

    Session hibSession = HibernateUtil.getSessionFactory().openSession();
    Transaction tx = null;
    try {
        tx = hibSession.beginTransaction();
        hibSession.save(fdk);
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
    <title>Feedback Submission</title>
</head>
<body>
    <h2>Feedback Submission</h2>
    <p>Feedback Submitted Successfully!</p>
    <p><a href="viewTicket.jsp">Tickets Dashboard</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>
