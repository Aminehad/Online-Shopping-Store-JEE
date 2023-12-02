<%@page  import ="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("na");
String email=request.getParameter("em");
String subject=request.getParameter("su");
String message=request.getParameter("message");
System.out.print(name);
System.out.print(email);
System.out.print(subject);
System.out.print(message);
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("delete from messages where name='"+name+"' and email='"+email+"' and subject='"+subject+"' and comments='"+message+"'");
	ps.executeUpdate();
	response.sendRedirect("viewcomments.jsp");

}catch(Exception e){
	response.sendRedirect("viewcomments.jsp");
	System.out.println(e);
	
	
}%>