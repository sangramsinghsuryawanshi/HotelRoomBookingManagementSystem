<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	margin-top: 5%;
	width: 30%;
	padding: 20px;
	margin-left: 33%;
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
    <form action="/BuyRoom" method="post">
        <h1>Buy Room</h1>
        
        <label>Room Type: </label>
        <input type="text" name="roomType" value="${d.roomType}" readonly="readonly"><br><br>

        <label>Is Available: </label>
        <input type="text" name="available" value="${d.available}" readonly="readonly"><br><br>

        <label>Room Price: </label>
        <input type="number" name="price" value="${d.price}" readonly="readonly"><br><br>

        <label>CustomerName: </label>
        <input type="text" name="customerName" placeholder="Enter your name" required="required"><br><br>

        <label>Check-In Date: </label>
        <input type="date" name="checkInDate" required><br><br>

        <label>Check-Out Date: </label>
        <input type="date" name="checkOutDate" required><br><br>

        <input type="hidden" name="roomId" value="${d.roomId}"> 
        
        <button type="submit">Buy Room</button>
    </form>

    <h2>${success}</h2>
</body>

</html>