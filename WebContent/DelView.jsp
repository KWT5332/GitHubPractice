<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete View</title>
</head>
<body>
	<script>
	<%
		int result = (Integer)request.getAttribute("result"); //형변환
		if(result > 0){
			%>
				alert("Delete complete");
			<%
		}else{
			%>
				alert("No target ID");
				location.href="deleteForm.jsp";
			<%
		}
	%>
	location.href="index.jsp";
	</script>
</body>
</html>