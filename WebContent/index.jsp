<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
* {
   box-sizing: border-box;
   text-align: center;
}

div {
   border: 1px solid black;
}
.container{width: 400px; height: 80px; margin: auto;}



</style>
<script>
$(function(){
   $("#Input").on("click",function(){
      location.href="input.per";
   })
   
   $("#Output").on("click",function(){
      location.href="output.per";
   })
   
   $("#Delete").on("click",function(){
      location.href="delete.per";
   })
   
   $("#Modify").on("click",function(){
      location.href="modify.per";
   })
   
   $("#Personlist").on("click",function(){
      location.href="list.per";
   })
   
   
})
</script>
</head>
<body>
         <table border=1 align=center>
            <tr>
               <th colspan=5> Welcome!
            </tr>
            <tr>
               <td><button id="Input">input</button>
               <td><button id="Output">output</button>
               <td><button id="Delete">delete</button>
               <td><button id="Modify">modify</button>
               <td><button id="PersonList">list</button>
            </tr>
         </table>

</body>
</html>