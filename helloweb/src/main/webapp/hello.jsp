<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%> <!-- JAVA CODE -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World <%=name %>(<%=email %>)</h1> <!-- Value -->
</body>
</html>