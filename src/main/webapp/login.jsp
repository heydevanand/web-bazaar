<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>webBbazar Login Page</title>
<%@include file="all_Component/allCss.jsp"%>
</head>
<body  style="background-color : #EEEEEE">
	<%@include file="all_Component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row mt-5 mb-5 p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center"><b>Login Page</b> </h3>
					
					
					<c:if test="${not empty failedMsg }">
					<p class="text-center text-danger">${failedMsg}</p> 
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg}</p> 
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					

						<form action="login" method="post">
							<div class="form-group p-1">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control " id="exampleInputEmail1"
									aria-describedby="emailHelp" required="required" name="email" placeholder="Enter email">
								
							</div>
							<div class="form-group p-1">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" required="required"
									name="password"
									placeholder="Password">
							</div>
							
							<div class="text-center p-1">
							<button type="submit" class="btn btn-primary mb-2">Login</button><br>
							<a href="rester.jsp"> Create Account</a>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="all_Component/footer.jsp" %>
</body>
</html>