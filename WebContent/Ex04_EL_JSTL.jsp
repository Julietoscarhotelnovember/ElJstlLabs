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
<h3>EL parameter 받기</h3>
<!-- Ex04_EL_JSTL.jsp?id=kglim&pwd=1004 -->
${param.id} - ${param.pwd}<br>
<h3>EL과 JSTL 제어문 사용하기</h3>
<c:set var="userid" value="${param.id}" />
<c:set var="userpwd" value="${param.pwd}" />

id: ${userid}<br>
pwd: ${userpwd}<br>

<c:if test="${empty userpwd}">
	<h3>empty userpwd</h3>
</c:if>
<hr>
<c:if test="${!empty userpwd}">
	<h3>not empty userpwd</h3>
	<c:if test="${userpwd=='1004'}">
		<h3>welcome admin</h3>
	</c:if>
</c:if>
</body>
</html>