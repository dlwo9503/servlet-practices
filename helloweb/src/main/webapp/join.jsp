<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); // 이게 앞에 있어야지 한글이 안 깨짐
	String email = request.getParameter("email");
	String password = request.getParameter("pwd");
	String birthYear = request.getParameter("birthYear");
	String gender = request.getParameter("gender");
	String[] hobbies = request.getParameterValues("hobby"); // 배열에 저장하고, getParameterValues를 사용해줘야 함
	String profile = request.getParameter("profile");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email%><br />
	<%=password%><br />
	<%=birthYear%><br />
	<%=gender%><br />
	<%
		for(String hobby : hobbies){
	%>
		<h6>취미 : <%=hobby %> </h6>
	<%
		}
	%>
	<p>
	<%=profile.replaceAll("\n", "<br/>") %> <!-- 개행을 <br/>로 모두 바꿔줘야 개행이 됨 -->
	</p>
</body>
</html>