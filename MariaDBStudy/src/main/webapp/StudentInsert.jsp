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
		
		// 화면의 데이터를 가져옴
		String name = request.getParameter("name");
		String temp_number = request.getParameter("number");
		int number= 0;
		
		// number 값이 null 이거나 ""이 아닐 경우만 진행 
		//int 형 변수에 null 이나 공백 넣으면 에러 발생 하기때문에 있는 if 문
		if(temp_number != null && temp_number != ""){
			number = Integer.parseInt(temp_number);
		}		
		
		System.out.println("******************************************** ");

		//java 내의 함수를 실행
		ConInsertStudent con = new ConInsertStudent();
		con.conStudy(name, number);
	%>
</body>
</html>