<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//login.html > submit > loginok.jsp
    	String id=request.getParameter("userid");
    	
    	//include, forward
    	request.setAttribute("name", "kosta");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<!--
	Expression Language: jsp에서 사용하는 스크립트
	목적: 스파게티 코드(jsp, html 혼재)의 개선을 위해
		 표현식 > 출력 담당
	사용: 톰캣 el-api.jar
 -->
스크립트릿(기존방식): <%= id %><br>
스크립트릿(기존방식): <%= request.getAttribute("name") %>
<hr>
EL request value: ${requestScope.name}<br> <!-- 가급적 이렇게 -->
EL request value: ${name}
<hr>
EL request parameter value: ${param.userid}
<hr>
<%= 200+100 %>
<h3>EL 기본 문법</h3>
스크립트릿: <%= 200+100 %><br>
EL: ${300+500}<br>
EL: ${"1"+2}<br> <!-- 자동형변환 가능 -->
EL: ${null+1}<br> <!-- el은 null값을 0으로 -->
EL: ${1==1}<br>
EL: ${!true}<br>
EL: ${empty x}<br> <!-- x가 비어있니? -->
EL: ${!empty x}<br>

</body>
</html>