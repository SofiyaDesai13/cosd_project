<%-- 
    Document   : Ticket Status 
    Created on : 8 Apr 2024, 8:22:42?pm
    Author     : sofiyadesai
--%>

<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>

<%
    String ticketId = request.getParameter("ticketId");
    String department = request.getParameter("department");
    String severity = request.getParameter("severity");
    String description = request.getParameter("description");
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
                tkt.setDepartment(department);
                tkt.setSeverity(severity);
                tkt.setDescription(description);
                hibsession.update(tkt);
                tx.commit();
                ticketFound = true;
                break;
            }
        }
        if (ticketFound) {
            out.println("Ticket Updated Successfully!");
        }else{
            out.println("Invalid ticket, Please try again");
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
    <p><a href="seeAllTickets.jsp">See All Tickets</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>