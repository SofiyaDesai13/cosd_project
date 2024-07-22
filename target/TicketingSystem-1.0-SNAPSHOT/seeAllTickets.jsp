<%-- 
    Document   : See All Ticket
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<html>
<head>
<meta charset="UTF-8">
<title>See All Tickets</title>
</head>
<body>
    <h2>Open Tickets</h2>
</body>


<%
    Session hibsession = null;
    Transaction tx = null;
    try {
        hibsession = HibernateUtil.getSessionFactory().openSession();
        tx = hibsession.beginTransaction();
        Query q = hibsession.createQuery("from Ticket tkt order by tkt.ticketId desc");
        Collection<Ticket> allTickets = q.list();
        boolean ticketFound = false;

        for (Ticket tkt : allTickets) {
            out.println(tkt);
            ticketFound = true;
        }
        if (!ticketFound) {
            out.println("No open ticket are available.");
        }
    } catch (Exception e) {
        if (tx != null) {
            tx.rollback();
        }
        throw new ServletException(e);
    } finally {
        if (hibsession != null) {
            hibsession.close();
        }
    }
%>

<body>
    <h2>Check Tickets Dashboard</h2>
    <form action="edit.jsp" method="post">
        <input type="submit" value="Edit">
    </form>
    <form action="adminAnsTicket.jsp" method="post">
        <input type="submit" value="Answer Ticket">
    </form>
    <form action="closeTicket.jsp" method="post">
        <input type="submit" value="Close Ticket">
    </form>
    <form action="unanswered.jsp" method="post">
        <input type="submit" value="Check for unanswered Tickets">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>