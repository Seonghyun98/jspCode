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
	��ư
	<form action="insert.jsp" method="post">
		��ȣ :<input type = "text" id = "number"> <br>
		�̸� :<input type = "text" id = "name"> <br>
		<button type="submit">��ȸ!!!</button>
	</form>
	<%
		ConnectMariaDB con = new ConnectMariaDB();
		con.connect();
	%>
</body>
</html>