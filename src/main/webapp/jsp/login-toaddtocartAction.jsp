<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="hashing.Hashmethod.*"%>
<%@page import= "java.security.*"%>
<%@page import ="java.math.BigInteger" %>
<%@page import ="java.security.MessageDigest" %>
<%@page import ="java.security.NoSuchAlgorithmException" %>

<%
String email =request.getParameter("email");
String password =request.getParameter("password");
String pw="";
//if("admin@gmail.com".equals(email) && "admin".equals(password)){
//	session.setAttribute("email",email);
//	response.sendRedirect("../admin/adminDash.jsp");
	
//}
//else {
	    // Static getInstance method is called with hashing MD5
         MessageDigest md = MessageDigest.getInstance("MD5");

         // digest() method is called to calculate message digest
         //  of an input digest() return array of byte
         byte[] messageDigest = md.digest(password.getBytes());

         // Convert byte array into signum representation
         BigInteger no = new BigInteger(1, messageDigest);

         // Convert message digest into hex value
         String hashtext = no.toString(16);
         while (hashtext.length() < 32) {
             hashtext = "0" + hashtext;
         }
         
		pw=hashtext; 
		System.out.print(pw);
	int z=0,t=0;
	try{
		
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from users where email='"+email+"'and password='"+pw+"'");
			while(rs.next())
			{	
				z=1;
				session.setAttribute("email",email);
				response.sendRedirect("product.jsp");
			}
		ResultSet rs1=st.executeQuery("select *from admin where email='"+email+"'and password='"+pw+"'");
			while(rs1.next())
			{	
				t=1;
				session.setAttribute("email",email);
				response.sendRedirect("product.jsp");
				
			}
			if (z==0&&t==0)
			response.sendRedirect("login-toaddtocart.jsp?msg=doesntexist");
	}
	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("login-toaddtocart.jsp?msg=invalid");
	}
//}
%>