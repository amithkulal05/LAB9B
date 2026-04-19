
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
String name = request.getParameter("username");


// Create session
session.setAttribute("username", name);

// Set expiry time (1 minute)
session.setMaxInactiveInterval(60);

%>

<h2>Hello <%= name %>!</h2>

<p><b>Session ID:</b> <%= session.getId() %></p>
<p><b>Session Created:</b> <%= new Date(session.getCreationTime()) %></p>
<p><b>Last Access Time:</b> <%= new Date(session.getLastAccessedTime()) %></p>

<p><b>Note:</b> Session will expire in 1 minute.</p>

</body>
</html>
