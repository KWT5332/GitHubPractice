<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person list</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
   <table border=1 align=center>
            <tr>
               <th colspan=3> 회원 정보
            </tr>
            <tr>
               <td>ID
               <td>NAME
               <td>CONTACT
            </tr>
         </table>
         <c:forEach var="i" items="${list}">
            <tr>
               <td>${i.id}
               <td>${i.name}
               <td>${i.contact}
            </tr>
         </c:forEach>
</body>
</html>