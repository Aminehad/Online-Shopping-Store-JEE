<%@page  import ="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String[] name=request.getParameterValues("product-name");
String price=request.getParameter("product-price");
String quantity=request.getParameter("product-quantity");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("delete from product where name='"+name[0]+"'");
	ps.executeUpdate();
	response.sendRedirect("adminDash.jsp");

}catch(Exception e){
	response.sendRedirect("deleteproduct.jsp");
	System.out.println(e);
	
	
}%>