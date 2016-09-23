<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="str" value="Functionlib" />
<c:set var="str2" value="fun<p>end" />
${str} <br> ${str2} <br>

대문자 출력: ${fn:toUpperCase(str)}<br>
문자열 길이: ${fn:length(str)}<br>
규칙(시작:index, 끝:index-1)<br>
부분 문자 추출: ${fn:substring(str,3,6)}<br>
치환: ${fn:replace(str,'n','가')}<br>
</body>
</html>