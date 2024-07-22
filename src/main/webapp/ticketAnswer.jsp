<%-- 
    Document   : Answer ticket status
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="com.demo.ticketingsystem.TicketAnswer"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<body>
    <h2>Answer Tickets</h2>
</body>
</html>

<%
    String ticketId = request.getParameter("ticketId");
    String query = request.getParameter("query");
    String comments = request.getParameter("comments");
    Session hibsession = null;
    Transaction tx = null;
    try {
        hibsession = HibernateUtil.getSessionFactory().openSession();
        tx = hibsession.beginTransaction();
        Query q = hibsession.createQuery("from Ticket tkt order by tkt.ticketId desc");
        Collection<Ticket> allTickets = q.list();
        boolean ticketFound = false;

        for (Ticket tkt : allTickets) {
            if (ticketId.equals(tkt.getTicketId())) {
                TicketAnswer answer = new TicketAnswer(tkt.getTicketId(), tkt.getTitle(), tkt.getDepartment(), tkt.getSeverity(), tkt.getDescription(), tkt.getAttachment(), query, comments);
                Session hibSession1 = HibernateUtil.getSessionFactory().openSession();
                tx = hibSession1.beginTransaction();
                hibSession1.save(answer);
                tx.commit();
                ticketFound = true;
                break;
            }      
        }
        if (ticketFound) {
            out.println("Ticket updated with additional Query!");
        }else{
            out.println("No ticket with ticketId-" + ticketId + " exists in our system.");
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
<html>
<body>
    <p><a href="index.jsp">Home</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>