<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>Products Details</h3>

		<table border=1 cellspacing=0 cellpadding=10>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PRICE</th>
			</tr>
			<c:set var="product" value="${obj }"></c:set>
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td>${product.price }</td>
			</tr>
		</table>

		<h3>Update above product details</h3>
		<form action="success" >
			Product id: <input type="text" name="id"
				placeholder="Enter Product Name to  be updated"><br>
			<br> Product Name: <input type="text" name="name"
				placeholder="Enter Product Name to  be updated"><br>
			<br> Product Price: <input type="text" name="price"
				placeholder="Enter Product price to  be updated"><br>
			<br> <input type="submit" value="UPDATE Prodcut">

		</form>
	</center>
</body>
</html>