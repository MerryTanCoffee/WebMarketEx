<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">상품 목록</h1>
		</div>
	</div>
	
	<div class = "container">
		<div class = "row" align = "center">
		<%@ include file = "dbconn.jsp" %>
		<% PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   
		   String sql = "select * from product";
		   pstmt = conn.prepareStatement(sql);
		   rs = pstmt.executeQuery();
		   while(rs.next()){
		%>
		<div class = "col-md-4">
			<img src = "${pageContext.request.contextPath }/resources/images/<%=rs.getString("P_FILENAME") %>"
			style = "width:100%;"/>
			<h3><%=rs.getString("P_NAME") %></h3>
			<p><%=rs.getString("P_DESCRIPTION") %></p>
			<p><%=rs.getString("P_UNITPRICE") %></p>
			<p><a href = "./product.jsp?id=<%=rs.getString("p_id")%>" class = "btn btn-secondary"
			role = "button">상품정보&raquo;</a></p>
		</div>
		<%	   
		   }
		   if(rs != null) 
			   rs.close();
		  
		   if(pstmt != null) 
			   pstmt.close();
		   if(conn != null)
			   conn.close();
			   
		%>	
		</div>
	</div>
</body>
</html>