<%@page  import ="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="hashing.Hashmethod.*"%>
<%@page import= "java.security.*"%>
<%@page import ="java.math.BigInteger" %>
<%@page import ="java.security.MessageDigest" %>
<%@page import ="java.security.NoSuchAlgorithmException" %>
<%
String email=session.getAttribute("email").toString();
String name=request.getParameter("name");
String mobileNumber=request.getParameter("mobileNumber");
String password=request.getParameter("password");
String adress=request.getParameter("adress");
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
		Connection con=ConnectionProvider.getCon();//pour etablir une connexion avec la base de donnees
		PreparedStatement ps=con.prepareStatement("update users set name=?, Adress=?, mobileNumber=?, password=? where email='"+email+"'");//ce sql statement template sera cree est envoye a la base de donnes//ce sql query sera dnc compile par la base de donne sans avoir etre execute
		
		ps.setString(1,name);
		ps.setString(2,adress);
		ps.setString(3,mobileNumber);
		ps.setString(4, pwd);
		ps.executeUpdate();//une fois on arrive a execute l'application fait le binding des valeurs entre avec les parametres dans la base de donnees
		session.setAttribute("password", password);
		response.sendRedirect("edit-info.jsp?msg=valid");
	
	}catch(Exception e){
		response.sendRedirect("edit-info.jsp?msg=invalid");
		System.out.println(e);
		
		
}









%>