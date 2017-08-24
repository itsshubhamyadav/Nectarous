<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include><br>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-6 item-photo">
				<img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					style="max-width:100%; margin-top: 50px;" />
			</div>
			<div class="col-md-7">
			
			    <label>Name</label>
				<h2>${product.name}</h2>
				<label>Description</label>
				<h4>${product.description}</h4>
				<label>Price</label>
				<h5>${product.price}</h5>
				<label>Vendor</label>
				<h5>${product.supplier.supplierName}</h5>
			</div>
			<div class="section">
				<form action="${pageContext.request.contextPath}/addToCart" method="post">
					<input type="hidden" value="${product.pid}" name="pid" />
					 <input type="hidden" value="${product.price}" name="pPrice" /> 
					 <input	type="hidden" value="${product.name}" name="name" />
					  <input type="hidden" value="${product.imgname}" name="imgname" />
						<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<label>Mention quantity of product for purchase:</label>
					<input type="text" class="form-control" name="quant" required /><br>
					<button class="btn btn-primary btn-lg" type="submit" >Add To Cart</button>
				</form>
			</div>
			<div class="col-sm-9">
			<label ><h3>Description</h3></label>
			<hr>
			<p>The Product are of Original material and are Fresh.Aslo certified by Food Corporation of India</p>
			</div>
		</div>
	</div>
</body>
</html>