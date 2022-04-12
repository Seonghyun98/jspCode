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
	<%
		ConnectMariaDB con = new ConnectMariaDB();
		con.connect();
	%>
</body>
</html>