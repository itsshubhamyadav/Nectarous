<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<title>Login or Register</title>
<link rel="shortcut icon" href="<c:url value="/resources/img/1.png"></c:url>" />
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/login.js"></c:url>"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/login.css"></c:url>">


</head>
<body>

	<div id="fullscreen_bg" class="fullscreen_bg" />
	<div id="regContainer" class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="login" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="login" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form"
									action="${pageContext.request.contextPath}/login" method="post"
									role="form" style="display: block;">
									<div class="form-group">
										<form:errors path="username" cssClass="err" />
										<label for="username">User ID</label> <input type="text"
											name="username" id="username" tabindex="1"
											class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<label for="password">Password</label> <input type="password"
											name="password" id="password" tabindex="2"
											class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember"
											id="remember"> <label for="remember">
											Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit"
													tabindex="4" class="form-control btn btn-login"
													value="Log In">
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="${pageContext.request.contextPath}/saveregister" method="post"
									role="form" style="display: none;">
									<div class="form-group">
									<form:errors path="name" cssClass="err" />
										<label for="username">Username</label> <input type="text"
											name="name" id="name" tabindex="1"
											class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
									<form:errors path="email" cssClass="err" />
										<label for="email">E-mail</label> <input type="email"
											name="email" id="email" tabindex="1" class="form-control"
											placeholder="xyz@domain.com" value="">
									</div>
									<div class="form-group">
									<form:errors path="address" cssClass="err" />
										<label for="address">Address</label> <input type="text"
											name="address" id="address" tabindex="1" class="form-control"
											placeholder="Address" value="">
									</div>
									<div class="form-group">
									<form:errors path="password" cssClass="err" />
										<label for="password">Password</label> <input type="password"
											name="password" id="password" tabindex="2"
											class="form-control" placeholder="Password">
									</div>

									<div class="form-group">
										<label for="gender">Gender</label> <select
											class="form-control" name="gender">
											<option value="Select">Select</option>
											<option value="m">Male</option>
											<option value="f">Female</option>
											<option value="others">Other</option>
										</select>
									</div>
									<div class="form-group">
									<form:errors path="phone" cssClass="err" />
										<label for="phone">Phone</label> <input type="text"
											name="phone" id="phone" tabindex="2" class="form-control"
											placeholder="Phone Number">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>