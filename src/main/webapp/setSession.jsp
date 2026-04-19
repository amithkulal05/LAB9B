<%@ page import="java.util.*" %>

<html>
<head>
    <title>Session Set</title>
</head>
<body>

<%
String name = request.getParameter("username");
int time = Integer.parseInt(request.getParameter("time"));


// Store in session
session.setAttribute("username", name);

// Set expiry time (user-defined)
session.setMaxInactiveInterval(time);


%>

<h2>Hello <%= name %>!</h2>

<p>Session will expire in <%= time %> seconds.</p>

<a href="checkSession.jsp">Click here to check session</a>

</body>
</html>
