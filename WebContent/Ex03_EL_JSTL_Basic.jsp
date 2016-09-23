<%@page import="java.util.HashMap"%>
<%@page import="kr.or.kosta.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    	Emp e=new Emp(2000,"kosta");
    	/* e.setEmpno(2000);
    	e.setEname("kosta"); */
    	
    	HashMap<String, String> hp=new HashMap<String, String>();
    	//JSTL에서 자바 객체 사용하기
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL & JSTL</title>
</head>
<body>
<h3>기존방식</h3>
기존방식: <%= e %><br>
기존방식: <%= e.getEmpno() %><br>
기존방식: <%= e.getEname() %><br>
<hr>
<h3>EL과 JSTL 사용</h3>
1. 변수 만들기 (이렇게 한번은 해야 한다...)<br>
<c:set var="m" value="<%= e %>"/>
2. 출력하기<br>
EL출력(자바객체 직접 접근 불가): ${e}<br>
EL출력(JSTL을 사용해 변수 값 설정): ${m}<br>
EL출력(getter 호출): ${m.empno}<br>
EL출력(getter 호출): ${m.ename}<br>

<h3>JSTL 사용하기</h3>
<c:set var="ename" value="${m.ename}" />
EL에서 JSTL값 출력하기: ${ename}<br>

<h3>JSTL 변수 만들고 범위 정의하기</h3>
<c:set var="job" value="농구선수" scope="page" />
당신의 직업은: ${job}<br>

<c:set var="job2" value="아구선수" scope="request" />
위에서 만든 job2는 include, forward된 페이지에서 사용 가능
<br>
<c:set var="job3">축구선수</c:set>
이것도 가능한 당신의 직업은: ${job3}<br>

<c:remove var="job3"/>
job3 value remove: ${job3}<br>

<h3>JSTL에서 자바객체 사용하기</h3>
<c:set var="vhp" value="<%=hp%>" />

지연된 표현식: #(만들기 전에 쓸 수 있다)<br>
<c:set var="vcolor" value="#{vhp.color}" />
before 지연된 표현식: ${vcolor}<br>

<c:set target="${vhp}" property="color" value="blue" />
<!-- 자바에서 hp.put("color", "red")와 같다 -->
after 지연된 표현식: ${vcolor}<br>
</body>
</html>