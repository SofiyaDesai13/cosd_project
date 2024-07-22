<%-- 
    Document   : Assign Support Team
    Created on : 13 Apr 2024, 5:12:48?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.SupportRegistrationForm"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<html>
<head>
<meta charset="UTF-8">
<title>Support Team Members</title>
</head>
<body>
    <h2>Support Team Members</h2>
</body>

<%
    Session hibsession = null;
    Transaction tx = null;
    try {
        hibsession = HibernateUtil.getSessionFactory().openSession();
        tx = hibsession.beginTransaction();
        Query q = hibsession.createQuery("from SupportRegistrationForm spt order by spt.supportemail desc");
        Collection<SupportRegistrationForm> sptTeam = q.list();
        boolean sptMem = false;

        for (SupportRegistrationForm spt : sptTeam) {
            out.println(spt.getSupportemail());
            sptMem = true;
        }
        if (!sptMem) {
            out.println("No support member available.");
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

<body>
<h2>Assign Support Team</h2>
<form action="supportDptAssign.jsp" method="post">
    <label for="email">Enter Support Member:</label>
    <input type="email" id="email" name="email" required><br>
    <label for="assigndepartment">Assign the Department:</label>
    <select id="assigndepartment" name="assigndepartment">
        <option value="Network">Network</option>
        <option value="Server">Server</option>
        <option value="Host">Host</option>
        <option value="Website">Website</option>
    </select><br>
    <input type="submit" value="Submit Ticket">
    <p><a href="adminHome.jsp">Admin Home</a></p>
</form>
</body>
</html>

<%@ include file="authentication.jsp" %>