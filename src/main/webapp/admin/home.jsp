<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Home</title>
<%@include file="allCss.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>

	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
	<c:redirect url="../login.jsp"> </c:redirect>
	</c:if>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-regular fa-calendar-plus fa-3x p-2 text-primary"></i><br>
							<h4>Add Books</h4>
							-------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x p-2 text-info"></i><br>
							<h4>All Books</h4>
							--------------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-dolly fa-3x p-2 text-danger"></i><br>
							<h4>Order</h4>
							--------------------
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">

			<a data-toggle="modal" data-target="#exampleModalCenter" >
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x p-2 text-primary"></i>
						<h4>LogOut</h4>
						--------------------
					</div>
				</div>
			</a>
			</div>
		</div>
	</div>
	
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header ">
        <h5 class="modal-title " id="exampleModalLongTitle "></h5>webBbazar.com
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <div class="text-center">
        <h4>Do you want to Logout</h4>
           <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
           <a href="../Logout" type="button" class="btn btn-danger">Logout</a>
        </div>
      </div>
      <div class="modal-footer">
     
      </div>
    </div>
  </div>
</div>

<!-- Logout Modal Bootstrap End-->

	<div style="margin-top: 303px;">

		<%@include file="footer.jsp"%></div>
</body>
</html>