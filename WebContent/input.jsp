<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$("#inputForm").on("submit", function() {
			if ($("#writer").val() == "") {
				alert("ID를 입력해주세요.");
				return false;
			}
		})
	})
</script>
<style>
.container {
	border: 1px solid black;
	width: 180px;
	margin: auto;
	text-align: center;
}
</style>
</head>

<body>
    <div class="container">
        <form action="inputProc.per" method="get">
        <input type="text" id="id" name="id" placeholder="ID">
        <input type="text" id="name" name="name" placeholder="Name">
        <input type="text" id="contact" name="contact" placeholder="Contact">
        <input type="submit" id="inputForm">
			<td colspan=3 align=center><a href="index.jsp"><button type=button>back</button></a>
        </form>
    </div>

</body>
</html>