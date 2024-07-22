<%-- 
    Document   : Download Ticket
    Created on : 13 Apr 2024, 7:12:06?pm
    Author     : sofiyadesai
--%>

<%@include file="navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.FeedbackTicket"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<body>
    <h2>View Feedback</h2>
</body>
</html>

<%
    String email = request.getParameter("email");
    Session hibsession = null;
    Transaction tx = null;
    try {
        hibsession = HibernateUtil.getSessionFactory().openSession();
        tx = hibsession.beginTransaction();
        Query q = hibsession.createQuery("from FeedbackTicket fdk order by fdk.email desc");
        Collection<FeedbackTicket> allfeedbacks = q.list();
        boolean feedbackFound = false;

        for (FeedbackTicket fdk : allfeedbacks) {
            if (email.equals(fdk.getEmail())){
                out.println("Username - " + fdk.getName());
                out.println(",  Given Feedback - " + fdk.getFeedback());
                feedbackFound = true;
                break;
            }
        }
        if (!feedbackFound) {
            out.println("User not found!");
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
    <p><a href="adminHome.jsp">Admin Home</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>