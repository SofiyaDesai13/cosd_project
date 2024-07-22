<%-- 
    Document   : Delete User Account
    Created on : 13 Apr 2024, 6:46:12?pm
    Author     : sofiyadesai
--%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.DeleteUser"%>
<%@ page import="com.demo.ticketingsystem.UserRegistrationForm" %>
<%@ page import="com.demo.hibernateUtil.HibernateUtil" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Transaction" %>
<%@ page import="org.hibernate.Query" %>
<%@page import="java.util.Collection"%>
<%@page import="java.util.List"%>

<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String email = request.getParameter("email");

        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = hibSession.beginTransaction();

            Query query = hibSession.createQuery("from UserRegistrationForm usr order by usr.email desc");
            Collection<UserRegistrationForm> allUsrs = query.list();
            for (UserRegistrationForm usr : allUsrs) {
                if (email.equals(usr.getEmail())) {
                    hibSession.delete(usr);
                    tx.commit();
                    out.println("<p>User with email " + email + " deleted successfully.</p>");
            }}}
        catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            out.println("<p>Error deleting user. Please try again.</p>");
        } finally {
            hibSession.close();
        }
    }
%>

<html lang="en">
<body>
    <p><a href="index.jsp">Register</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>