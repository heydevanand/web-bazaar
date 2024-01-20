<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_Component/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #EEEEEE">
	<%@include file="all_Component/navbar.jsp"%>



	<div class="container">
		<h3 class="text-center p-3">Hello , Khushi Vashishtha</h3>
		<div class="row p-5">
			<div class="col-md-6">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open-reader fa-3x p-2"></i>
							</div>

							<h3>Sell Old Books</h3>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-6">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-user-lock fa-3x p-2"></i>
							</div>

							<h3>Login & Security (Edit Profile)</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 p-3">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
							<i class="fa-solid fa-location-dot fa-3x p-2"></i>
							</div>

							<h3>Your Address</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 p-3">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
						<i class="fa-solid fa-gift fa-3x p-2"></i>
							</div>

							<h3>My Order</h3>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-6 p-3">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-success">
						<i class="fa-solid fa-handshake-angle fa-3x p-2"></i>
							</div>

							<h3>help Center</h3>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

</body>
</html>