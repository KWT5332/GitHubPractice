<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
<script src="http://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$("#modifyForm").on("submit", function() {
			if ($("#modifyid").val() == "") {
				alert("수정할 ID를 확인해주세요.");
				return false;
			}
		})
		
		<c:choose>
		<c:when test="${result>0}">
			alert("Modify ComPlete");
		</c:when>
		<c:otherwise> // 조건이 붙지 않음
			alert("Modify Failed");
		</c:otherwise>
		</c:choose>
		location.href="index.jsp";
	})
</script>
<style>
td {
	text-align: center;
}
</style>
</head>
<body>
	<table border=1 align=center>
		<tr>
			<th colspan="3">Person List
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
				<form action="modifyProc.per" method=get id="modifyForm">
					<input type=text name=delid id="modifyid" placeholder="수정할 대상 ID">
					<input type=text name=modname placeholder="Name 재입력 "> <input
						type=text name=modcontact placeholder="Contact 재입력 "> <input
						type=submit value="modify"> <a href="index.jsp"><button
							type=button>back</button></a>
				</form>
			</td>
		</tr>
	</table>

</body>
</html>