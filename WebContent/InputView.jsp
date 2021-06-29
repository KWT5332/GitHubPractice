<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Result</title>
</head>
<body>
	<script>
	<c:choose>
	<c:when test="${result>0}">
		alert("Input ComPlete"+${result.name});
	</c:when>
	<c:otherwise> // 조건이 붙지 않음
		alert("Input Failed");
	</c:otherwise>
	</c:choose>
	location.href="index.jsp";
	</script>
</body>
</html>