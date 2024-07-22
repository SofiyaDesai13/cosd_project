<%-- 
    Document   : Close ticket status
    Created on : 2 May 2024, 10:54:28?am
    Author     : sofiyadesai
--%>

<%@include file="navigation.jsp" %>
<%@page import="com.demo.ticketingsystem.Ticket"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.CloseTicket"%>
<%@ page import="com.demo.hibernateUtil.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.Query" %>
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>

<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String ticketId = request.getParameter("ticketId");

        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = hibSession.beginTransaction();
            boolean ticketDelete = false;

            Query query = hibSession.createQuery("from Ticket tkt order by tkt.ticketId desc");
            Collection<Ticket> allTickets = query.list();
            for (Ticket tkt : allTickets) {
                if (ticketId.equals(tkt.getTicketId())) {
                    hibSession.delete(tkt);
                    tx.commit();
                    ticketDelete = true;
                    break;
                }}
            if(ticketDelete){
                out.println("Ticket with ticketId - " + ticketId + " deleted successfully.</p>");
            }else{
                out.println("Ticket with ticketId - " + ticketId + " does not exists in our Database.</p>");
            }
        }
        catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            out.println("Error deleting ticket. Please try again.");
        } finally {
            hibSession.close();
        }
    }
%>
<html>
<body>
    <p><a href="download.jsp">View Tickets</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>