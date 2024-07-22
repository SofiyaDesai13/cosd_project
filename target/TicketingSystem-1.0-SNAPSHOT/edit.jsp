<%-- 
    Document   : Edit Ticket
    Created on : 13 Apr 2024, 6:46:12?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Ticket Data</title>
</head>
<body>
    <h2>Edit Ticket Data</h2>
    <form action="editStatus.jsp" method="post">
        <label for="ticketId">Enter Ticket Id:</label>
        <input type="text" id="ticketId" name="ticketId" required><br>
        
        <label for="department">Edit Selected Department:</label>
        <select id="department" name="department">
            <option value="Network">Network</option>
            <option value="Server">Server</option>
            <option value="Host">Host</option>
            <option value="Website">Website</option>
        </select><br>

        <label for="severity">Change Issue Severity</label>
        <select id="severity" name="severity" required>
            <option value="Low">Low</option>
            <option value="Medium">Medium</option>
            <option value="High">High</option>
        </select><br>
        
        <label for="description">Edit Ticket Description:</label><br>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>
        
        <input type="submit" value="Edit Ticket">
    </form>
</body>
</html>

<%@ include file="authentication.jsp" %>