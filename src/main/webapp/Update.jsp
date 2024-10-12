<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	form {
	justify-content: center;
	align-items: center;
	text-align: center;
	border: 1px solid orange;
	border-radius: 20px;
	box-shadow: 12px 20px 12px rgb(0,0,0,0.2);
	margin-top: 10%;
	width: 30%;
	padding: 20px;
	margin-left: 30%;
}
button {
	border: none;
	border-radius: 20px;
	padding: 10px;
	background-color: orange;
	color: white;
	transition:background-color 0.7s ease;
}
button:hover{
	background-color: green;
}
input {
	border-radius: 20px;
	padding: 10px;
	border-color: o;
}
</style>
</head>
<%@include file="Header.jsp" %>
<body>
	<form action="/UpRoom" method="post">
		<h2>Add Room</h2>
		<input type="hidden" name="roomId" value="${data.roomId}">
		<label>Room Type: </label>
		<input type="text" name="roomType" value="${data.roomType}"><br><br>
		<label>is Available: </label>
		<input type="text" name="available" value="${data.available}"><br><br>
		<label>Room Price: </label>
		<input type="number" name="price" value="${data.price}"><br><br>
		<button type="submit" >Update Room</button>
	</form>
	<h2>${success}</h2>
</body>
</html>