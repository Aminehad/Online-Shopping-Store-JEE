<%@page  import ="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String[] name=request.getParameterValues("product-name");
String price=request.getParameter("product-price");
String quantity=request.getParameter("product-quantity");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update product set price=?, quantity=? where name='"+name[0]+"'");
	ps.setString(1,price);
	ps.setString(2,quantity);
	ps.executeUpdate();
	response.sendRedirect("editproduct.jsp");

}catch(Exception e){
	response.sendRedirect("editproduct.jsp");
	System.out.println(e);
	
	
}%>