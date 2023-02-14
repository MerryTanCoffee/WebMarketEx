<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<nav class = "navbar navbar-expand navbar-dark bg-dark">
	<div class = "container">
		<div class = "navbar-header">
			<a class = "navbar-brand" href="./welcome.jsp">Home</a>
		</div>
		<div>
			<ul class = "navbar-nav mr-auto">
				<li class = "nav-item">
					<a class = "nav-link" href = "<c:url value ="/products.jsp"/>">상품 목록</a>
				</li>
				<li class = "nav-item">
					<a class = "nav-link" href = "<c:url value ="/addProduct.jsp"/>">상품 등록</a>
				</li>
				<li class = "nav-item">
					<a class = "nav-link" href = "<c:url value ="/editProduct.jsp?edit=update"/>">상품 수록</a>
				</li>
				<li class = "nav-item">
					<a class = "nav-link" href = "<c:url value ="/editProduct.jsp?edit=delete"/>">상품 삭제</a>
				</li>
			</ul>
		
		</div>
	</div>


</nav>