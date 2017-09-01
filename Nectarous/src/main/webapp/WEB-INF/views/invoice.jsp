<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon"
	href="<c:url value="/resources/img/1.png"></c:url>" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/invoice.css"></c:url>">
<title>Invoice Page</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="container" style="margin-top: 80px; margin-bottom: 100px;">
		<div class="row">

			<div
				class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<div class="receipt-header">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<div class="receipt-left">
								<img class="img-responsive"
									src="<c:url value="/resources/img/1.png"></c:url>" alt="none"
									style="width: 71px; border-radius: 43px;">
							</div>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-right">
							<div class="receipt-right">
								<h5>Nectarous</h5>
								<p>
									+91 89604-62045 <i class="fa fa-phone"></i>
								</p>
								<p>
									nectarous@gmail.com <i class="fa fa-envelope-o"></i>
								</p>
								<p>
									Noida<i class="fa fa-location-arrow"></i>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="receipt-header receipt-header-mid">
						<div class="col-xs-8 col-sm-8 col-md-8 text-left">
							<div class="receipt-right">
								<h5>${user.name }</h5>
								<p>
									<b>Mobile :</b> ${user.phone }
								</p>
								<p>
									<b>Email :</b> ${user.email}
								</p>
								<p>
									<b>Address :</b> ${user.address }
								</p>
							</div>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4">
							<div class="receipt-left">
								<h1 style="">Receipt</h1>
							</div>
						</div>
					</div>
				</div>

				<div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Description</th>
								<th>Amount</th>
							</tr>
						</thead>
						<tbody>
	
								<c:forEach var="c" varStatus="st" items="${cart}">
									<tr>
											<td class="col-md-9"> <c:out value="${c.cartProductName}"></c:out></td>
											<td class="col-md-3">&#x20b9; <c:out value="${c.cartQuantity*c.cartPrice}"></c:out></td>
									<c:set var="gtot" value="${gtot + c.cartPrice * c.cartQuantity }"></c:set></td>
									</tr>
								</c:forEach>
							<c:set var="cgst" value="${gtot * 0.08 }"></c:set>
							<c:set var="sgst" value="${gtot * 0.18 }"></c:set>
							<tr>
								<td class="text-right">
									<p>
										<strong>Total Amount: </strong>
									</p>
									<p>
										<strong>CGST Tax: </strong>
									</p>
									<p>
										<strong>SGST Tax: </strong>
									</p>
									<p>
										<strong>Shipping Charge: </strong>
									</p>
								</td>
								<td>
									<p>
										<strong><i class="fa fa-inr"></i> ${gtot} /-</strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i> ${cgst} /-</strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i> ${sgst} /-</strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i> 50 /-</strong>
									</p>
								</td>
							</tr>
							<tr>

								<td class="text-right"><h2>
										<strong>Total: </strong>
									</h2></td>
								<td class="text-left text-danger"><h2>
										<strong><i class="fa fa-inr"></i> ${gtot+cgst+sgst+50}/-</strong>
									</h2></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="row">
					<div class="receipt-header receipt-header-mid receipt-footer">
						<div class="col-xs-8 col-sm-8 col-md-8 text-left">
							<div class="receipt-right">
								<p>
								<br><br><br><br>
									<b>Date :</b> 30 Aug 2017
								</p>

							</div>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4">
							<div class="receipt-left">
								<p><img src="<c:url value="/resources/img/me.png"></c:url>" alt="none" height="100px" width="200px" style="margin-left:-5px; margin-top:-40px;"/></p>
								<h1 style="margin-top:-40px;">Signature</h1>
							</div>
						</div>
						<br>
						<br><br><br>
						<center>
						<br><br>
						<h3 style="color: rgb(140, 140, 140);">Your Product will be Delivered with 6 hrs of working day.</h3>
							<h2 style="color: rgb(140, 140, 140);">
							Thank you for your Shopping!</h2>
							<center>
								<br>
								<br> <a class="btn btn-success btn-lg btn-block"
									role="button" href="<c:url value="/index"/>">Click to Go to
									Home Page</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include><br>


</body>
</html>