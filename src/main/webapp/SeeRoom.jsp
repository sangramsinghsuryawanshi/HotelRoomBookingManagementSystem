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
	justify-content: center;
	align-items: center;
	text-align: center;
	text-decoration:underline;
	text-shadow: 2px 2px 6px black;
	margin-top: 5%;
	}
	table {
	justify-content: center;
	align-items: center;
	text-align: center;
	width: 50%;
	margin-left:25%;
	
}
th{
	padding:10px;
	background-color: black;
	color: white;
}
td{
	padding: 5px;
	background-color: gray;
	color: white;
}
.b2 {
	background-color: maroon;
	color: white;
	padding: 5px;
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
	<h1>Rooms Informations</h1>
	<table border="2">
		<tr>
			<th>Customer Name</th>
			<th>checkInDate</th>
			<th>checkOutDate</th>
			<th>Request Cancel</th>
		</tr>
		<c:forEach var="c" items="${cus}">
			<tr>
				<td>${c.customerName}</td>
				<td>${c.checkInDate}</td>
				<td>${c.checkOutDate}</td>
				<td><a href="Delete/${c.roomId}/${c.bookingId}" class="b2" onclick="alert('Are you sure to cancle request');">Cancel</a></td>
			</tr>
		</c:forEach>
	</table>
	<h2>${up}</h2>
</body>
</html>