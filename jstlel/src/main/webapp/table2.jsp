<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="row" value="${param.r }"/>
	<c:set var="col" value="${param.c }"/>
	
	<c:if test="${empty row }">
		<c:set var="row" value="3"/>
	</c:if>
	
	<c:if test="${empty col }">
		<c:set var="col" value="3"/>
	</c:if>
	
	<table border="1" cellspacing="0" cellpadding="5">
		<c:forEach begin="1" end="${row }" step="1" var="r">
			<!-- 0 ~ 9 까지 var값 step만큼 증가시키면서 반복 -->
			<tr>
				<c:forEach begin="1" end="${col }" step="1" var="c">
					<td>cell(${r }, ${c })</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>