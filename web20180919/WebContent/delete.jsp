<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String empno = request.getParameter("empno");

	//1. 데이터베이스 드라이버 로드
	//Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection conn = null;
	PreparedStatement pstmt = null;
	int resultCnt = 0;

	/* String url = "jdbc:oracle:thin:@localhost:1522:orcl";
	String user = "scott";
	String pw = "tiger"; */
	
	String jdbcUrl = "jdbc:apache:commons:dbcp:open";

	try {
		
		conn = DriverManager.getConnection(jdbcUrl);

		String sql = "delete from emp where empno=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(empno));
		resultCnt = pstmt.executeUpdate();
		
	} finally {
		pstmt.close();
		conn.close();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>
		삭제 완료
		<%=resultCnt%>
		<a href="emp_list.jsp">emp LIST</a>
	</h1>
</body>
</html>