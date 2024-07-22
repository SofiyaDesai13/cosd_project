<%-- 
    Document   : Create Ticket
    Created on : 13 Apr 2024, 4:20:18?pm
    Author     : sofiyadesai
--%>
<%@include file="navigation.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Create Ticket</title>
</head>
<body>
    <h2>Create Ticket</h2>
    <form action="ticketStatus.jsp" method="post">
        <label for="ticketId">Ticket ID:</label>
        <input type="text" id="ticketId" name="ticketId" required><br>
        
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required><br>
        
        <label for="department">Select Department:</label>
        <select id="department" name="department">
            <option value="Network">Network</option>
            <option value="Server">Server</option>
            <option value="Host">Host</option>
            <option value="Website">Website</option>
        </select><br>

        <label for="severity">Issue Severity</label>
        <select id="severity" name="severity" required>
            <option value="Low">Low</option>
            <option value="Medium">Medium</option>
            <option value="High">High</option>
        </select><br>
        
        <label for="description">Request Description:</label><br>
        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>
        
        <label for="attachment">Attachment (optional):</label>
        <input type="file" id="attachment" name="attachment"><br>
        
        <input type="submit" value="Submit Ticket">
    </form>
</body>
</html>