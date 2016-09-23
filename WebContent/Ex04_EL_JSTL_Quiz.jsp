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
	String ID=request.getParameter("ID");
	if(ID.equals("kglim")){
%>
<%= ID %><img src="http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif" alt="이미지">
<%	
}
%>
<hr>
<h3>JSTL 이용하기</h3>
<c:set var="id" value="${param.ID}" />
<c:if test="${id=='kglim'}">
	${id}<img src="http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif" alt="이미지">
</c:if>
<hr>
<h3>JSTL if문에서 var 변수 사용하기</h3>
<c:if test="${param.age>20}" var="bo">
	param value: ${param.age}
</c:if>
<br>
if문에서 var 변수 설정값: ${bo} (T/F결정)
</body>
</html>