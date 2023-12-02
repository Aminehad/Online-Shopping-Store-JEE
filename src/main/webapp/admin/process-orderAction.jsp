<%@page  import ="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String id=request.getParameter("order-id");
System.out.println(id);
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update orderp set order_status='Delivered' where id='"+id+"'");
	ps.executeUpdate();
	response.sendRedirect("orders.jsp");

}catch(Exception e){
	response.sendRedirect("orders.jsp");
	System.out.println(e);
	
	
}%>