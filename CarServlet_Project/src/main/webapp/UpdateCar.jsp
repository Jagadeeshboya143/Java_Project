<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%ResultSet rs=(ResultSet) request.getAttribute("ResultSet"); %>
<%rs.next(); %>
	<form action="saveUpdatedCar" method="post">
	<input type="number" value="<%=rs.getInt(1)%>" name="carId" readonly="true"><br>
	<input type="text" value="<%=rs.getString(2)%>" name="carModel"> <br>
	<input type="text" value="<%=rs.getString(3)%>" name="carBrand"><br>
	<input type="text" value="<%=rs.getString(4)%>" name="carColor"><br>
	<input type="number" value="<%=rs.getInt(5)%>" name="carPrice" ><br>
	<input type="submit" value="UPDATE">
	</form>
</body>
</html>