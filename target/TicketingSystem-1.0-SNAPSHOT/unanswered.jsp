<%-- 
    Document   : Unanswered Ticket
    Created on : 13 Apr 2024, 7:12:06?pm
    Author     : sofiyadesai
--%>

<%@include file="navigation.jsp" %>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="com.demo.ticketingsystem.TicketAnswer"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<html lang="en">
<body>
    <h2>Unanswered Tickets</h2>
</body>
</html>

<%
    Session hibsession = null;
    Transaction tx = null;
    try {
        hibsession = HibernateUtil.getSessionFactory().openSession();
        tx = hibsession.beginTransaction();
        Query q = hibsession.createQuery("from Ticket tkt order by tkt.ticketId desc");
        Query q1 = hibsession.createQuery("from TicketAnswer tkAns order by tkAns.ticketId desc");
        Collection<Ticket> allTickets = q.list();
        Collection<TicketAnswer> ansTickets = q1.list();
        
        List<Ticket> unansweredTickets = new ArrayList<>();

        // Find uncommon elements in allTickets compared to ansTickets
        for (Ticket ticket : allTickets) {
            boolean found = false;
            for (TicketAnswer answer : ansTickets) {
                if (ticket.getTicketId().equals(answer.getTicketId())) {
                    found = true;
                    break;
                }
            }
            if (!found) {
                unansweredTickets.add(ticket);
            }
        }
        out.println("Unanswereds allTickets: " + unansweredTickets);
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

<%@ include file="authentication.jsp" %>