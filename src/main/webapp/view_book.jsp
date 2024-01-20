<%@page import="com.entity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_Component/allCss.jsp"%>
</head>
<body style="background-color: #EEEEEE;">

	<%@include file="all_Component/navbar.jsp"%>
	

  <%
int bid=Integer.parseInt(request.getParameter("bid"));
BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
BookDtls b=dao.getBookById(bid);
%> 


	<div class="container p-5">
		<div class="row ">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="books/<%=b.getPhotoName() %>" style="height: 150px; width: 100px">
				<h5 class="mt-3">Book Name : <span class="text-success"><%=b.getBookName() %></span> </h5>
				<h5>Author Name :<span class="text-success"> <%=b.getAuthor() %></span></h5>
				<h5>Category : <span class="text-success"><%=b.getBookCategory() %></span></h5>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white ">
				<h2 ><%=b.getBookName() %></h2>
				
				<%
				if("Old".equals(b.getBookCategory()))
				{%>
				<h5 class="text-primary">Contact to Seller</h5>
				<h5 class="text-primary"><i class="fa-solid fa-envelope"></i> EMail : <%=b.getEmail() %></h5>
				<%} %>

				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-hand-holding-dollar fa-2x"></i>
						<p>Cash On Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
					<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free Shipping</p>
					</div>
</div>

<%
if("Old".equals(b.getBookCategory())){
	%>	
	<div class="text-center p-5">
				<a href="index.jsp" class="btn btn-success ml-1"> <i
								class="fa-solid fa-cart-plus "></i> Continue Shopping</a>
				<a href="" class="btn btn-danger ml-1 "> <i class="fa-solid fa-coins p-1"></i>200</a></div>
			</div>
	
<%}else{%>
<div class="text-center p-5">
				<a href="" class="btn btn-primary ml-1"> <i
								class="fa-solid fa-cart-plus "></i> Add Cart</a>
				<a href="" class="btn btn-danger ml-1 "> <i class="fa-solid fa-coins p-1"></i>200</a></div>
			</div>

<% }%>

		</div>

	</div>
</body>
</html>