<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	String no2 = request.getParameter("no");
	Long no = Long.parseLong(no2);
	String pw = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPassword(pw);
	
	GuestbookVo vo2 = new GuestbookDao().findAll2(no);
	String pw2 = vo2.getPassword();
	
	if(pw.equals(pw2)){
		new GuestbookDao().delete(vo);
		response.sendRedirect(request.getContextPath());	
	} else {
		out.println("<script>alert('비밀번호가 틀렸습니다.')</script>");
		%><script>location.href="index.jsp"</script><%
	}
%>
</head>
<body>

</body>
</html>