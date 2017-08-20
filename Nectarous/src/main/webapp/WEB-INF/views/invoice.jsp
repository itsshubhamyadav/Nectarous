<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Invoice Page</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="container">
		<form class="form-horizontal" action="/checkout">
			<fieldset>
				<div class="form-group">
					<label class="col-md-4 control-label" for="username">Customer
						Name</label>
					<div class="col-md-4">
						<label class="col-md-4 control-label" for="username">${userDetails.name}</label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="email">Customer
						E-mail</label>
					<div class="col-md-4">
						<label class="col-md-4 control-label" for="email">${userDetails.email}</label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="address">Shipping
						Address</label>
					<div class="col-md-4">
						<label class="col-md-4 control-label" for="address">${userDetails.address}</label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="deliverydate">Date
						of Delivery</label>
					<div class="col-md-4">
						<label class="col-md-4 control-label" for="deliverydate">Delivery
							with 4 Hours </label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button type="submit" name="inviceClick" class="btn btn-primary">OK</button>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>