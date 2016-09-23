<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Date today=new Date(); //이런건 el이 할 수 없다
    	request.setAttribute("day", today);
    	session.setAttribute("day2", today);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL은 출력담당이다</title>
</head>
<body>
<h3>출력</h3>
퍼센트: <%= request.getAttribute("day") %><br>
el: ${day}<br>
el: 습관적으로 scope 지정 ${requestScope.day}<br>
<hr>
퍼센트: <%= session.getAttribute("day2") %><br>
el: ${sessionScope.day2}<br>
</body>
</html>