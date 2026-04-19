<%@ page import="java.util.*" %>

<html>
<head>
    <title>Check Session</title>
</head>
<body>

<%
String name = (String) session.getAttribute("username");


if (name != null) {


%> <h2>Hello <%= name %>! Session is still active.</h2> <p>Session ID: <%= session.getId() %></p> <p>Last Access Time: <%= new Date(session.getLastAccessedTime()) %></p>
<%
} else {
%> <h2>Session Expired!</h2>
<%
}
%>

</body>
</html>
