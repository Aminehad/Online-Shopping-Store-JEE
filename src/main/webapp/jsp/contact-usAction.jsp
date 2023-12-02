<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
	try{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into messages values(?,?,?,?)");//un sql statement template sera cree est envoye a la base de donnes//ce sql query template sera dnc compile par la base de donne et le resultat sera stokésans avoir etre execute
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,subject);
		ps.setString(4,message);
		ps.executeUpdate();
		response.sendRedirect("contact-us.jsp");
	}
	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("contact-us.jsp");
	}

%>