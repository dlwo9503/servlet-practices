<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello world</h1>
	<h2>Hello world</h2>
	<h3>Hello world</h3>
	<h4>Hello world</h4>
	<h5>Hello world</h5>
	<h6>Hello world</h6>

	<table border='1' , cellspacing='0' cellpadding='10'>
		<tr>
			<!-- 행 -->
			<th>글번호</th>
			<!-- 열 -->
			<th>글제목</th>
			<!-- th는 헤더 -->
			<th>작성자</th>
		</tr>
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		<tr>
			<td>2</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>
		<tr>
			<td>3</td>
			<td>안녕</td>
			<td>또치</td>
		</tr>
	</table>
	<br>
	<img src='images/dooly.jpg' style='width: 80px; border: 1px solid #999' /> <!-- 상대 경로 -->
	<img src='/helloweb/images/dooly.jpg' style='width: 80px; border: 1px solid #999' /> <!-- 절대 경로 -->
	<br>
	<a href='form.jsp'>폼으로 가기</a>
	<br>
	<a href='hello.jsp?name=kickscar&email=k@gmail.com'>Hello</a>
	<p>5월 24, 2021 12:27:19 오후
		org.apache.catalina.loader.WebappClassLoaderBase
		clearReferencesRmiTargets WARNING: Java 9에서 실행하면서 RMI Target 메모리 누수
		탐지를 사용 가능하게 하려면, "--add-opens=java.rmi/sun.rmi.transport=ALL-UNNAMED"를
		JVM 명령 행 아규먼트에 추가해야 합니다. 또는, RMI Target 메모리 누수 탐지를 사용불능 상태로 설정함으로써, 이
		경고를 없앨 수도 있습니다. 5월 24, 2021 12:27:19 오후
		org.apache.catalina.core.StandardContext reload</p>

</body>
</html>