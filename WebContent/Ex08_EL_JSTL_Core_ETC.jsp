<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>jstl core 기타사항</h3>
<h3>c:out(out.print)</h3>
&lt;p&gt; 태그는 문단태그 입니다<br>
<c:out value="<p>태그는 문단 태그 입니다"></c:out>
<hr>
<h3>예외처리</h3>
<c:catch var="msg">
	name: <%= request.getParameter("name") %>
	<%
		if(request.getParameter("name").equals("hong")){
	%>
		당신의 이름은: ${param.name} 입니다.<br>
	<%
		}
	%>	
</c:catch>
<c:if test="${msg!=null}">
	<h3>예외 발생</h3>
	오류메세지: ${msg}
</c:if>

<h3>include=import</h3>
<jsp:inclue page=""></jsp:inclue>
<c:import url=""></c:import>

<h3>링크</h3>
<c:url value=""></c:url>

<h3>페이지 이동</h3>
<c:redirect url=""></c:redirect>
=location.href
=response.sendRedirect("")
</body>
</html>