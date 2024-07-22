<%-- 
    Document   : Download Ticket
    Created on : 13 Apr 2024, 7:12:06?pm
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
<html lang="en">
<body>
    <h2>Tickets</h2>
</body>
</html>

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
            out.println("No ticket created.");
        }

        tx.commit();
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

<html lang="en">
<body>
    <p><a href="home.jsp">Home</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>