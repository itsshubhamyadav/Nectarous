<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>CheckOut</title>
<link rel="shortcut icon"
	href="<c:url value="/resources/img/1.png"></c:url>" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class='container' style="margin-top: 80px; margin-bottom: 100px;">
		<div class='row' style='padding-top: 25px; padding-bottom: 25px;'>
			<div class='col-md-12'>
				<div id='mainContentWrapper'>
					<div class="col-md-8 col-md-offset-2">
						<h2 style="text-align: center;">Review Your Order & Complete
							Checkout</h2>
						<hr />
						<a href="${pageContext.request.contextPath }/index"
							class="btn btn-info" style="width: 100%;">Add More Products &
							Services</a>
						<hr />
						<div class="shopping_cart">
							<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/invoiceProcess" method="post"
								id="payment-form">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseOne"><strong>Review Your Order</strong></a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<div class="items">
													<div class="col-md-9">

														<table class="table table-striped">
															<c:forEach var="c" items="${cart}">
																<c:set var="gtot"
																	value="${gtot + c.cartPrice * c.cartQuantity }"></c:set>
															</c:forEach>

															<tr>
																<td colspan="2"><a
																	class="btn btn-warning btn-sm pull-right"
																	href="http://www.startajobboard.com/"
																	title="Remove Item">X</a> <b> Final Products</b></td>
															</tr>
															<tr>
																<td>
																	<ul>
																		<c:forEach var="c" items="${cart}">
																			<li><h5>
																					<strong><c:out
																							value="${c.cartProductName}"></c:out></strong>
																				</h5></li>
																		</c:forEach>
																	</ul>
																</td>
																<td><b>&#x20b9; <c:out value="${gtot+50}"></c:out></b>
																</td>
															</tr>
														</table>
													</div>
													<div class="col-md-3">
														<div style="text-align: center;">
															<h3>Order Total</h3>
															<h3>
																<span style="color: green;">&#x20b9; <c:out
																		value="${gtot+50}"></c:out></span>
															</h3>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>                
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<div style="text-align: center; width: 100%;">
												<a style="width: 100%;" data-toggle="collapse"
													data-parent="#accordion" href="#collapseTwo"
													class=" btn btn-success"
													onclick="$(this).fadeOut(); $('#payInfo').fadeIn();">Check
													for Billing Information»</a>
											</div>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo"><strong>Contact and Billing
													Information</strong></a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">
											<b>Help us keep your account safe and secure, please
												verify your billing information.</b> <br />
											<br />
											<table class="table table-striped" style="font-weight: bold;">
												<tr>
													<td style="width: 175px;"><label for="id_email">Best
															Email:</label></td>
													<td class="form-control" style="color: brown;">
														${user.email}</td>
												</tr>
												<tr>
													<td style="width: 175px;"><label for="id_first_name">Name:</label></td>
													<td class="form-control" style="color: brown;">
														${user.name }</td>
												</tr>
												<tr>
													<td style="width: 175px;"><label
														for="id_address_line_1">Address:</label></td>
													<td class="form-control" style="color: brown;">
														${user.address }</td>
												</tr>
												
												<tr>
													<td style="width: 175px;"><label for="id_phone">Phone:</label></td>
													<td class="form-control" style="color: brown;">
														${user.phone }</td>
												</tr>

											</table>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<div style="text-align: center;">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapseThree" class=" btn   btn-success"
													id="payInfo" style="width: 100%; display: none;"
													onclick="$(this).fadeOut();  
                   document.getElementById('collapseThree').scrollIntoView()">Enter
													Payment Information »</a>
											</div>
										</h4>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree"> <b>Payment Information</b>
											</a>
										</h4>

									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											<span class='payment-errors'></span>
											<fieldset>
													&nbsp&nbsp&nbsp&nbsp<input type="radio" class="active"
														name="payment" value="DebitCard"> <label>
														<h4>&nbsp&nbsp&nbspDebit Card</h4>
													</label>
													<div class="form-group">
														<label class="col-sm-3 control-label"
															for="card-holder-name">Name on Card</label>
														<div class="col-sm-9">
															<input type="text" class="form-control"
																stripe-data="name" id="name-on-card"
																placeholder="Card Holder's Name">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label" for="card-number">Card
															Number</label>
														<div class="col-sm-9">
															<input type="text" class="form-control"
																stripe-data="number" id="card-number"
																placeholder="Debit/Credit Card Number"> <br />

														</div>
														<div class="form-group">
															<label class="col-sm-3 control-label" for="expiry-month">Expiration
																Date</label>
															<div class="col-sm-9">
																<div class="row">
																	<div class="col-xs-3">
																		<select class="form-control col-sm-2"
																			data-stripe="exp-month" id="card-exp-month"
																			style="margin-left: 5px;">
																			<option>Month</option>
																			<option value="01">Jan (01)</option>
																			<option value="02">Feb (02)</option>
																			<option value="03">Mar (03)</option>
																			<option value="04">Apr (04)</option>
																			<option value="05">May (05)</option>
																			<option value="06">June (06)</option>
																			<option value="07">July (07)</option>
																			<option value="08">Aug (08)</option>
																			<option value="09">Sep (09)</option>
																			<option value="10">Oct (10)</option>
																			<option value="11">Nov (11)</option>
																			<option value="12">Dec (12)</option>
																		</select>
																	</div>
																	<div class="col-xs-3">
																		<select class="form-control" data-stripe="exp-year"
																			id="card-exp-year">
																			<option value="2016">2016</option>
																			<option value="2017">2017</option>
																			<option value="2018">2018</option>
																			<option value="2019">2019</option>
																			<option value="2020">2020</option>
																			<option value="2021">2021</option>
																			<option value="2022">2022</option>
																			<option value="2023">2023</option>
																			<option value="2024">2024</option>
																		</select>
																	</div>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-3 control-label" for="cvv">Card
																CVC</label>
															<div class="col-sm-3">
																<input type="text" class="form-control"
																	stripe-data="cvc" id="card-cvc"
																	placeholder="Security Code">
															</div>
														</div>

														<div class="form-group">
															<label class="col-sm-3 control-label" for="couponCode">Coupon
																Code</label>
															<div class="col-sm-3">
																<input type="text" class="form-control"
																	name="couponCode" placeholder="Coupon Code" />
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-offset-3 col-sm-9"></div>
														</div>

														<div>
															<center>
																<img
																	src="https://s3.amazonaws.com/hiresnetwork/imgs/cc.png"
																	style="max-width: 250px; padding-bottom: 20px;">
															</center>
														</div>
														&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
															type="radio" class="active" name="payment"
															value="CreditCard"> <label>
															<h4>&nbsp&nbsp&nbspCredit Card</h4>
														</label> <br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
															type="radio" class="active" name="payment"
															value="NetBanking"> <label>
															<h4>&nbsp&nbsp&nbspNetBanking</h4>
														</label><br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
															type="radio" class="active" name="payment" value="COD">
														<label>
															<h4>&nbsp&nbsp&nbspCash on Delivery</h4>
														</label><br>
											<input type="hidden" value="${gtot+50}" name="total" />
											<button type="submit" class="btn btn-success btn-lg"
												style="width: 100%;">Pay Now</button>
							<br />
							<div style="text-align: left;">
								<br /> By submiting this order you are agreeing to our <a
									href="/legal/billing/">universal billing agreement</a>, and <a
									href="/legal/terms/">terms of service</a>. If you have any
								questions about our products or services please contact us
								before placing this order.
							</div>
                                                </div></fieldset></div></div></div>
                            </form>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include><br>
</body>
</html>