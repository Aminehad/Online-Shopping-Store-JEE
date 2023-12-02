<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="hashing.Hashmethod.*"%>
<%@page import= "java.security.*"%>
<%@page import ="java.math.BigInteger" %>
<%@page import ="java.security.MessageDigest" %>
<%@page import ="java.security.NoSuchAlgorithmException" %>

<%
	String name=request.getParameter("name");
	String phoneNumber=request.getParameter("mobileNumber");
	String adress=request.getParameter("adress");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String pwd="";
	
		  
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
         
		pwd=hashtext;
		System.out.println(pwd);
	
	try{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?)");//ce sql statement template sera cree est envoye a la base de donnes//ce sql query sera dnc compile par la base de donne sans avoir etre execute
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,phoneNumber);
		ps.setString(4,pwd);
		ps.setString(5,adress);
		ps.executeUpdate();
		response.sendRedirect("signup.jsp?msg=valid");
	}
	catch(Exception e){
		System.out.println(e);
		response.sendRedirect("signup.jsp?msg=invalid");
	}

%>