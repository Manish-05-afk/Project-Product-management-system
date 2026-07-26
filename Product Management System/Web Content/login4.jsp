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
			String b = request.getParameter("txt2");
			String sql = "select * from distributer2 where uname = '"+a+"' and upassword = '"+b+"'";
			
			//set session
			session.setAttribute("uid",a);
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			int flag = 0;
			while(rs.next())
			{
				flag=1;
			}
			if(flag==1)
			{
				response.sendRedirect("home2.html");
			}
			
			else
			{
				response.sendRedirect("login3.jsp");
			}
		}
		catch(Exception ae)
		{
			out.println(ae);
		}

		%>

</body>
</html>