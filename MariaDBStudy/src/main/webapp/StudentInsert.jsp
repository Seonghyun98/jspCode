<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="pack.ConInsertStudent"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="StudentInsert.jsp" method="post">
		번호 :<input type = "text" name = "number"> <br>
		이름 :<input type = "text" name = "name"> <br>
		<button type="submit">삽입</button>
	</form>
	<%
		request.setCharacterEncoding("UTF-8");	
	
		String name = request.getParameter("name");
		String temp_number = request.getParameter("number");
		int number= 0;

		if(temp_number != null && temp_number != ""){
			number = Integer.parseInt(temp_number);
		}		
		
		System.out.println("******************************************** ");

	
		ConInsertStudent con = new ConInsertStudent();
		con.conStudy(name, number);
	%>
</body>
</html>