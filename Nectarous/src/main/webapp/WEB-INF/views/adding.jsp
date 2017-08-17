<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/Adding.css"></c:url>">
<title>Adding </title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-am-1 col-md-7 col-md-offset-3">
			<div class="panel with-nav-tabs panel-primary">
				<div class="panel-heading">
					<ul class="nav nav-tabs">
					<li class="active"><a href="#tab1primary" data-toggle="tab">Category</a></li>
                            <li><a href="#tab2primary" data-toggle="tab">Supplier</a></li>
                            <li><a href="#tab3primary" data-toggle="tab">Product</a></li>
					</ul>
				</div>
				<div>
					<div class="panel-body">
						<div class="tab-content">
						<div class="tab-pane fade in active" id="tab1primary">
						<form method="post" action="<c:url value="/admin/saveCat" />" class="form-signin">
						<h4 class="input_title">Category ID</h4>
						<td><input class="form-control" type="number" name="cid" required/></td>
						<h4 class="input_title">Category Name</h4>
						<td><input class="form-control" type="text" name="name" required/></td>
						<button type="submit" class="btn btn-lg btn-info">Save</button>
						<button type="reset" class="btn btn-lg btn-info">Cancel</button>
						</form>
						</div>
						<div class="tab-pane fade" id="tab2primary">
						<form method="post" action="<c:url value="/admin/saveSupp"/>" class="form-signin">
						<h4 class="input_title">Supplier ID</h4>
						<td><input class="form-control" type="number" name="sid" required/ ></td>
						<h4 class="input_title">Supplier Name</h4>
						<td><input class="form-control" type="text" name="supplierName" required/></td>
						<button type="submit" class="btn btn-lg btn-info">Save</button>
						<button type="reset" class="btn btn-lg btn-info">Cancel</button>
						</form>
						</div>
						
  					<div class="tab-pane fade" id="tab3primary">
						<form method="post" action="<c:url value="/admin/saveProduct" />" class="form-signin" enctype="multipart/form-data">
						<span id="reauth-email" class="reauth-email"></span>
						<tr>
						<td class="input_title">Product Name</td>
						<td><input type="text" name="pName" required/></td>
						</tr>
						<tr>
						<td class="input_title">Product Price</td>
						<td><input type="text" name="pPrice" required/></td>
						</tr>
						<tr>
						<td class="input_title">Product Description</td>
						<td><input type="text" name="pDescription" required/></td>
						</tr>
						<tr>
						<td class="input_title">Product Stock</td>
						<td><input type="text" name="pStock" required/></td>
						</tr>
						
						<div class="form-group">
						<td>Select Category</td>
						<td><select class="form-control" name="pCategory" reqiured/>
						<option value="">----Category----</option>
						<c:forEach items="${catList}" var="cate">
						<option value="${cate.cid }">${cate.name }</option></c:forEach>
						</select></td>
						</div>
						
						<div class="form-group">
						<td>Select Supplier</td>
						<td><select class="form-control" name="pSupplier" reqiured/>
						<option value="">----Supplier----</option>
						<c:forEach items="${satList}" var="sate">
						<option value="${sate.sid }">${sate.supplierName }</option></c:forEach>
						</select></td>
						</div>
						
						<tr>
						<td class="input_title">image</td>
						<td><input type="file" name="file" required/></td>
						</tr>
						
						<button type="submit" class="btn btn-lg btn-info">Save</button>
						<button type="reset" class="btn btn-lg btn-info">Cancel</button>
						</form>
						</div>			
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>