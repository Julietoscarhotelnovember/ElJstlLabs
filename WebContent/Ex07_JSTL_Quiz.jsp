<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<!-- 1번 el, jstl을 사용해 값을 받아서 받은 값 출력 
	값이 없은 경우 empty라고 출력 -->
	
<c:set var="subject" value="${paramValues.subject}"/>
<c:set var="year" value="${param.year}"/>
<c:set var="choieyn" value="${param.choieyn}"/>

<c:choose>
	<c:when test="${empty subject}">
			your choice: empty<br>
	</c:when>
	<c:otherwise>
		<c:forEach var="i" items="${subject}">
			your choice: ${i}<br>
		</c:forEach>	
	</c:otherwise>
</c:choose>

select Year: ${year}<br>
select choice: ${choieyn}<br>
<%
	//힌트 request.getParameterValues("subject");
%>
<hr>

<!-- 2번  아래 코드를 el & jstl 변환하세요 -->
<h3>원래코드</h3>
<%
  int year = Integer.parseInt(request.getParameter("year"));
%>
년도:<input type="text" value="<%= year %>"><br>
<h3>select Tag(생일)</h3>
<select id="newYear" name="newYear" title="년도선택">
	<option>년도선택</option>
	<option value="2010" <%if(year==2010){%> selected<%}%>>2010</option>
	<option value="2011" <%if(year==2011){%> selected<%}%>>2011</option>
	<option value="2012" <%if(year==2012){%> selected<%}%>>2012</option>
	<option value="2013" <%if(year==2013){%> selected<%}%>>2013</option>
	<option value="2014" <%if(year==2014){%> selected<%}%>>2014</option>
	<option value="2015" <%if(year==2015){%> selected<%}%>>2015</option>
	<option value="2016" <%if(year==2016){out.print("selected");}%>>2016</option>
</select>
<hr>

<h3>jstl변환</h3>
<c:set var="year2" value="${param.year}" />
년도:<input type="text" value="${year2}"><br>
<h3>select Tag(생일)</h3>
<select id="newYear" name="newYear" title="년도선택">
	<option>년도선택</option>
	<option value="2010" <c:if test="${year2==2010}">selected</c:if>>2010</option>
	<option value="2011" <c:if test="${year2==2011}">selected</c:if>>2011</option>
	<option value="2012" <c:if test="${year2==2012}">selected</c:if>>2012</option>
	<option value="2013" <c:if test="${year2==2013}">selected</c:if>>2013</option>
	<option value="2014" <c:if test="${year2==2014}">selected</c:if>>2014</option>
	<option value="2015" <c:if test="${year2==2015}">selected</c:if>>2015</option>
	<option value="2016" <c:if test="${year2==2016}">selected</c:if>>2016</option>
</select>

<!-- 3번 choieyn값을 가지고 와서 넘어온 값이 y면 check박스에 checked로 -->
<br>
check박스 <input type="checkbox" name="check" value="java"
<c:if test="${choieyn=='y'}">checked</c:if> />
</body>
</html>