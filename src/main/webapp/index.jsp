<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>web Book bazar</title>
<%@include file="all_Component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/kvvfront.png");
	height: 80vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background: #E8EAF6;
}
</style>
</head>
<body style="background-color: #EEEEEE">
<% 
User u= (User)session.getAttribute("userobj");
%>
	<%@include file="all_Component/navbar.jsp"%>

	<div class="container-fluid back-img">
		<h6 class="text-center text-white ">.</h6>
	</div>


	<!-- Start recent book  -->
	<hr>

	<div class="container">
		<h3 class="text-center mb-3 ">Newly Added Books</h3>
		<div class="row">
			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getRecentBooks();
			for (BookDtls b :list2 ) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							<%
							if (b.getBookCategory().equals("Old")) {
							%>
							
						Categories :
							<%=b.getBookCategory()%></p>
							<div class="row">
							
							<a href="" class="btn btn-primary btn-sm ml-1"> View Details</a>
							<a href="" class="btn btn-danger btn-sm "><%=b.getPrice()%></a>
						</div>
						<%
						} else {
						%>


						Categories :
						<%=b.getBookCategory()%></p>

						<div class="row">
							<%
							
							if(u == null)
							{%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-cart-plus"></i> Add Cart</a>
							<% } else{%>
							<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-1"><i
									class="fa-solid fa-cart-plus"></i> Add Cart</a>
							
							<%
							}
							%>
							 <a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-primary btn-sm ml-1"> View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> <%=b.getPrice()%></a>
						</div>


						<%
						}
						%>



					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>
		<div class="text-center mt-2">
			<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white"><b>View
					all</b></a>
		</div>
	</div>


	<!-- End recent book  -->



	<!-- Start New book  -->
	<hr>

	<div class="container">
		<h3 class="text-center mt-3 mb-3">New Books</h3>
		<div class="row">

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName() %>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row">
						
						<%
						if(u == null)
						{%>
						<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
						<% } else{%>
						<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a>
						
						<%
						}
						%>
							 <a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-primary btn-sm ml-1"> View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> <%=b.getPrice()%></a>
						</div>

					</div>
				</div>
					</div>
				<%
				}
				%>



		






		</div>
		<div class="text-center mt-2">
			<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white"><b>View
					all</b></a>
		</div>
	</div>


	<!-- End new book  -->



	<!-- Start old book  -->

	<hr>
	<div class="container">
		<h3 class="text-center mb-3">Old Books</h3>
		<div class="row">
			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao3.getOldBooks();
			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p><%=b.getBookCategory()%></p>
						
						
						<div class="row">
							 <a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="btn btn-primary btn-sm ml-5"> View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"> <%=b.getPrice()%></a>
						</div>


					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-2">
			<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white"><b>View
					all</b></a>
		</div>
	</div>


	<!-- End old book  -->



	<%@include file="all_Component/footer.jsp"%>


</body>
</html>