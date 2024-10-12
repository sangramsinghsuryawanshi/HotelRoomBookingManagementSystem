<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add</title>
<style type="text/css">
	h1{
	text-shadow: 2px 2px 8px orange;
	font-size: 30px;
	}
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
h2{
	justify-content: center;
	align-items: center;
	text-align: center;
	text-decoration:underline;
	text-shadow: 2px 2px 6px lime;
	margin-top: 5%;
}
</style>
</head>
<%@include file="Header.jsp" %>
<body>
	<form action="/AddRoom" method="post">
		<h1>Add Room</h1>
		<label>Room Type: </label>
		<input type="text" name="roomType" placeholder="Enter Room Type" required="required"><br><br>
		<label>is Available: </label>
		<input type="text" name="available" placeholder="yes/no"><br><br>
		<label>Room Price: </label>
		<input type="number" name="price" placeholder="Enter Room Price" required="required"><br><br>
		<button type="submit" >Add Room</button>
	</form>
	<h2>${success}</h2>
</body>
</html>