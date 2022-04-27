<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="pack.ConnectMariaDB"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	버튼
	<form action="insert.jsp" method="post">
		번호 :<input type = "text" id = "number"> <br>
		이름 :<input type = "text" id = "name"> <br>
		<button type="submit">조회!!!</button>
	</form>
	<%
		ConnectMariaDB con = new ConnectMariaDB();
		con.connect();
	%>
</body>
</html>