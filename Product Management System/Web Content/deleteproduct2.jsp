<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
		<%
		try
		{
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product_management_system","root","");
			String a = request.getParameter("txt1");
			String sql = "delete from products where id = '"+a+"'";
			Statement st = con.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("viewproduct.jsp");
		}
		catch(Exception ae)
		{
			out.println(ae);
		}

		%>

</body>
</html>