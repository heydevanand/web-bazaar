

<%@page import="java.util.List"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All recent book</title>
<%@include file="all_Component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background: #E8EAF6;
}
</style>
</head>
<body style="background-color: #f0f2f2;">
	<%@include file="all_Component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">
			
				<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllOldBooks();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="books/<%=b.getPhotoName()%>"
							style="width: 100px; height: 150px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Categories :
							<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-solid fa-cart-plus"></i> Add Cart</a> <a href=""
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

	</div>
</body>
</html>