<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Add Books</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"> </c:redirect>
	</c:if>

	<div class="container mt-3 mb-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center p-2">Add Books</h4>
						

						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail1">Book Name*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Author Name*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputPassword1">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Price*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword1">
							</div>

							<div class="form-group">
								<label for="inputState">Book Categories</label> <select
									name="btype" class="form-control"
									<option selected>--select--</option>
									<option value="New"> New Book</option> id="inputState">
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Book Status</label> <select
									id="inputState" name="bstatus" class="form-control">
									<option selected>--select--</option>
									<option value="Active">Active</option>
									<option value="Inactive">Inactive</option>
								</select>
							</div>


							<div class="form-group">
								<label for="exampleFormControlFile1">Upload Photo</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
</body>
</html>