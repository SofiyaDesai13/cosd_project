<%-- 
    Document   : Update Password Status
    Created on : 13 Apr 2024, 6:46:12?pm
    Author     : sofiyadesai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.UserRegistrationForm"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Session hibsession = null;
    Transaction tx = null;
    try {
        hibsession = HibernateUtil.getSessionFactory().openSession();
        tx = hibsession.beginTransaction();
        Query q = hibsession.createQuery("from UserRegistrationForm usr order by usr.email desc");
        Collection<UserRegistrationForm> allUsrs = q.list();
        boolean userFound = false;

        for (UserRegistrationForm usr : allUsrs) {
            if (email.equals(usr.getEmail())) {
                usr.setPassword(password);
                hibsession.update(usr);
                tx.commit();
                session.setAttribute("user", usr);
                userFound = true;
                break;
            }
        }
        if (userFound) {
            out.println("Password Updated Successfully!");
        }else{
            out.println("Incorrect Email/ User doesn't exists.");
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
    <p><a href="index.jsp">Login</a></p>
</body>
</html>

<%@ include file="authentication.jsp" %>