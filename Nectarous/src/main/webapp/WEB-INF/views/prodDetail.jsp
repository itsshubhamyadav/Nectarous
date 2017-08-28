<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="<c:url value="/resources/img/1.png"></c:url>" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/prodDetail.css"></c:url>">
<title>Product Detail</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include><br>
	<br>

	
		<div class="container" style="margin-top:50px; margin-bottom:100px;">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></div>
						  <div class="tab-pane" id="pic-2"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></div>
						  <div class="tab-pane" id="pic-3"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></div>
						  <div class="tab-pane" id="pic-4"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></div>
						  <div class="tab-pane" id="pic-5"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img
					src="${pageContext.request.contextPath}/resources/${product.imgname}"
					 /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">${product.name}</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						
						<p class="product-description">${product.description}</p>
						<h4 class="price">current price :  <span> &#x20b9; ${product.price}</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						<h5 class="sizes">Vendor :  
							<span> ${product.supplier.supplierName}</span>
						</h5>
						<form action="${pageContext.request.contextPath}/addToCart" method="post">
					<input type="hidden" value="${product.pid}" name="pid" />
					 <input type="hidden" value="${product.price}" name="pPrice" /> 
					 <input	type="hidden" value="${product.name}" name="name" />
					  <input type="hidden" value="${product.imgname}" name="imgname" />
						<h5 class="sizes">Quantity :</h5><div class="col-xs-2" style="margin-left:100px; margin-top:-40px"> <input type="text" class="form-control" name="quant" required /></div><br>
						
						<div class="action">
							<button class="add-to-cart btn btn-default" type="submit" >Add to cart</button>
							<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
						</div>
						</form>
						<br>
						<h5 class="sizes"><label>Description</label></h5>
						<p>The Product are of Original material and are Fresh.Aslo certified by Food Corporation of India</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include><br>
</body>
</html>