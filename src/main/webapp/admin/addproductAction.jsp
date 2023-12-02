<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	String price=request.getParameter("price");
	String quantity=request.getParameter("quantity");
	String category=request.getParameter("category");
	String path=request.getParameter("path");
	
	try{
		Connection con= ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into product (name,price,quantity,category,path) values(?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,price);
		ps.setString(3,quantity);
		ps.setString(4,category);
		ps.setString(5,path);
		ps.executeUpdate();
		response.sendRedirect("adminDash.jsp?msg=valid");
	}
	catch(Exception e){
		System.out.println(e);
	}

%>