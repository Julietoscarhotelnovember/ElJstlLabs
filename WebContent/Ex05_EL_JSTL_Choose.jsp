<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>기존코드</h3>
<%
	String name=request.getParameter("name");
	if(name.equals("kglim")){
		out.print("<b>"+name+"</b>");
	} else if(name.equals("hong")){
		out.print("<i>"+name+"</i>");
	}
	out.print("<br>");
	
	int age=Integer.parseInt(request.getParameter("age"));
	switch(age){
		case 100:
			out.print("age: "+age);
			break;
		case 200:
			out.print("age: "+age);
			break;
		case 300:
			out.print("age: "+age);
			break;
		default:
			out.print("이도저도 아님"); 
	}
%>
<h3>위 코드를 jstl코드로 변환하기 choose</h3>
<ul>
	<c:choose>
		<c:when test="${param.name=='kglim'}">
			<li><b>${param.name}</b></li>
		</c:when>
		<c:when test="${param.name=='hong'}">
			<li><i>${param.name}</i></li>
		</c:when>
		<c:otherwise>
			<li>기타이름 ${param.name}</li>
		</c:otherwise>
	</c:choose>
</ul>
</body>
</html>