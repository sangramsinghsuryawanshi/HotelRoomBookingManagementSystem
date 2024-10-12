<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style type="text/css">
	
	header{
		justify-content: center;
		align-items: center;
		text-align: center;
		display: flex;
		gap:40px;
		background-color: lime;
		border-radius: 20px;
		line-height: 2.1;
		position: fixed;
		width: 100%;
		top: 0;
		left: 0;
		z-index: 2000; 
		
	}
	a{
		border-radius:20px;
		text-decoration: none;
		background-color: white;
		color: black;
		width: 100px;
		transition:background-color 0.7s ease;
	}
	a:hover {
		background-color: black;
		color: white;
}
</style>
</head>
<body>
	<header>
		<a href="/">Add Room</a>
		<a href="/RD">Room Details</a>
		<a href="/RS">Rooms</a>
		<a href="/SR">See Room</a>
	</header>
</body>
</html>