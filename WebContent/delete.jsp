<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$("#delForm").on("submit", function() {
			if ($("#delid").val() == "") {
				alert("삭제할 ID를 확인해주세요.");
				return false;
			}
		})
	})
</script>
</head>
<body>
<table border=1 align=center>
		<tr>
			<th colspan="3">Perosn List
		</tr>
		<tr>
			<th>ID
			<th>NAME
			<th>CONTACT
		</tr>
		<c:forEach var="i" items="${list}">
			<tr>
				<td>${i.id}
				<td>${i.name}
				<td>${i.contact}
			</tr>
		</c:forEach>
		<tr>
			<td colspan=4>
				<form action="deleteProc.per" method=get id="delForm">
					<input type=text name=delid id="delid" placeholder="삭제할 대상 ID">
					<input type=submit value="delete"> 
					<a href="index.jsp"><button type=button>back</button></a>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>