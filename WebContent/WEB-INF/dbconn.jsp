<%@ page pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	Connection conn = null;

	try {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "webmarket";
		String password = "java";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,user, password);
		
	} catch (SQLException ex) {
		out.println("데이터베이스 연결에 실패했음");
		out.println("SQLException : " + ex.getMessage());
	}
%>