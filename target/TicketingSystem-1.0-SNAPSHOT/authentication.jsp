<%-- 
    Document   : authentication
    Created on : 07-Jul-2024, 12:56:53?am
    Author     : sofiya desai
--%><%
    if (session == null || session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>