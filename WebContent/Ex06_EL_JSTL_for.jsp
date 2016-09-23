<%@page import="java.util.Date"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.or.kosta.Emp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl for문 사용하기</title>
</head>
<body>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum+i}" />
</c:forEach>
sum 누적값: ${sum}
<hr>
<h3>구구단 5단 출력</h3>
<ul>
	<c:forEach var="i" begin="1" end="9">
		<li>5 * ${i} = ${5*i}</li>
	</c:forEach>
</ul>
<hr>
<h3>구구단 출력</h3>
<table border="1">
<c:forEach var="i" begin="0" end="9">
	<tr>
	<c:forEach var="j" begin="2" end="9">
		<c:choose>
			<c:when test="${i==0}">
				<th>${j}단</th>
			</c:when>
			<c:otherwise>
				<td>${j} * ${i} = ${i*j}</td>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	</tr>
</c:forEach>
</table>

<h3>jstl foreach문</h3>
<%
	//자바 배열도 객체
	int[] arr=new int[]{10,20,30,40,50};
	for(int i:arr){
		out.print("출력값: "+i+"<br>");
	}
%>

<h3>el과 jstl</h3>
arr배열(은 안나옴): ${arr}<br>
<c:set var="intarr" value="<%=arr%>" />
arr배열(cset): ${intarr}<br>

<c:forEach var="i" items="${intarr}">
	향상된 for같이 배열값1: ${i}<br>
</c:forEach>

<c:forEach var="i" items="<%=arr%>">
	향상된 for같이 배열값2: ${i}<br>
</c:forEach>

<c:forEach var="i" items="<%= new int[]{1,2,3,4,5} %>">
	향상된 for같이 배열값3: ${i}<br>
</c:forEach>

<h3>jstl 활용(varStatus)</h3>
<c:forEach var="i" items="${intarr}" varStatus="status">
	index: [${status.index}] /
	count: [${status.count}] /
	value: [${i}]<br>
</c:forEach>

<h3>jstl for문 활용(중요!)</h3>
<%
	List<Emp> emplist=new ArrayList<Emp>();
	emplist.add(new Emp(100, "A"));
	emplist.add(new Emp(200, "B"));
	emplist.add(new Emp(300, "C"));
	 for(Emp e:emplist){
		 out.print(e.getEmpno()+" / "+e.getEname()+"<br>");
	 }
%>
<h3>jstl변환</h3>
<c:set var="list" value="<%=emplist%>" />
<table border="1">
	<tr><td>사번</td><td>이름</td></tr>
	<c:forEach var="emp" items="${list}">
		<tr><td>${emp.empno}</td><td>${emp.ename}</td></tr>
	</c:forEach>
</table>

<h3>jstl map객체 이용하기</h3>
<%
	HashMap<String, Object> hm=new HashMap<String, Object>();
	hm.put("name", "kglim");
	hm.put("pwd", "1004");
	hm.put("date", new Date());
%>
<h3>jstl 변환</h3>
<c:set var="hm" value="<%=hm %>"/>
<c:forEach var="obj" items="${hm}">
	${obj.key} => ${obj.value}<br>
</c:forEach>

<h3>jstl 단일 구분자</h3> <!-- split과 비슷한 -->
<c:forTokens var="token" items="A.B.C.D" delims=".">
	${token}<br>
</c:forTokens>

<h3>jstl 복합 구분자</h3> <!-- split과 비슷한 -->
<c:forTokens var="token" items="A.B/C-D" delims="./-">
	${token}<br>
</c:forTokens>
</body>
</html>