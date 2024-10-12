<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RoomDetails</title>
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
.b1 {
	background-color: green;
	color: white;
	padding: 5px;
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
			<th>Room Type</th>
			<th>Room isAvailable</th>
			<th>Room Price</th>
			<th>update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="room" items="${R}">
			<tr>
				<td>${room.roomType}</td>
				<td>
					<c:choose>
						<c:when test="${room.available=='yes'}">Available</c:when>
						<c:otherwise>Not Available</c:otherwise>
					</c:choose>
				</td>
				<td>${room.price}</td>
				<td><a href="/${room.roomId}" class="b1">Update</a></td>
				<td><a href="Delete/${room.roomId}" class="b2" onclick="alert('Are you sure to delete');">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<h2>${up}</h2>
</body>
</html>