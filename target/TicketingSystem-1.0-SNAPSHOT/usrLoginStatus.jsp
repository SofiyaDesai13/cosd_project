<%-- 
    Document   : loginManager
    Created on : 05-May-2024, 3:17:57 pm
    Author     : sofiyadesai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.demo.ticketingsystem.Utility"%>
<%@page import="com.demo.ticketingsystem.UserRegistrationForm"%>
<%@page import="com.demo.ticketingsystem.LoginForm"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.demo.hibernateUtil.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Collection"%>
<%@page import="org.hibernate.Session"%>

<%
         String email = request.getParameter("email");
         String password = request.getParameter("password");

        if (email != null && password != null) {
            LoginForm UserLogin = new LoginForm(email, password);
            Session hibsession = null;
            Transaction tx = null;
            try {
                hibsession = HibernateUtil.getSessionFactory().openSession();
                tx = hibsession.beginTransaction();
                Query q = hibsession.createQuery("from UserRegistrationForm usr order by usr.email desc");
                Collection<UserRegistrationForm> allUsrs = q.list();
                boolean userFound = false;

                for (UserRegistrationForm usr : allUsrs) {
                    if (UserLogin.getEmail().equals(usr.getEmail()) && UserLogin.getPassword().equals(usr.getPassword())) {
                        session.setAttribute("user", email);
                        response.sendRedirect("home.jsp");
                        userFound = true;
                        break;
                    }
                }
            if (!userFound) {
                out.println("Invalid email or password. Please try again.");
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
    } else {
        session.removeAttribute("user");
        response.sendRedirect("index.jsp");
    }
%>

<%@ include file="authentication.jsp" %>