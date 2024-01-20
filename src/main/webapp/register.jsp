<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>webBbazar :Register</title>
<%@include file="all_Component/allCss.jsp"%>
</head>
<body style="background-color: #EEEEEE">
	<%@include file="all_Component/navbar.jsp"%>

	<div class="container p-3 mt-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class=card-body>
	
						<h3 class="text-center">
							<b>Registration Page</b>
							
							<c:if test="${not empty succMsg}"><p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session"/>
							</c:if>
							
							<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session"/>
							</c:if>
							
						</h3>
						<form action="register" method="post">

							<div class="form-group mt-4">
								<label for="exampleInputEmail1">Enter Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="fname"
									placeholder="Enter full Name">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email"
									placeholder="Enter email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password" placeholder="Password">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Phone Number</label> <input
									type="number" class="form-control" id="exampleInputEmail1"
									required="required" aria-describedby="emailHelp" required="required" name="phno"
									placeholder="Enter whatsApp number">

							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree term & Condition</label>
							</div>
							<button type="submit" class="btn btn-primary mt-3 mb-4">Submit</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_Component/footer.jsp"%>
</body>
</html>