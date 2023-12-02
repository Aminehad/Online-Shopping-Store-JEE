<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String[] pquantity = request.getParameterValues("p-quantity");
String[] pname = request.getParameterValues("p-name");
String total=request.getParameter("total");
String shipadress =request.getParameter("adress");
String paydetails=request.getParameter("paydet");
String cvcnumber=request.getParameter("cvnum");
String m=request.getParameter("month");
String y=request.getParameter("year");
String h="";
String s="";
String ed="";
for(int i=0;i<2;i++){
	ed=m+"/"+y;
}

for(int i=0;i<pname.length;i++){
	h=h+pname[i]+"$";
	s=s+pquantity[i]+"$";
}
System.out.println(s);
System.out.println(h);


try{

	Connection con= ConnectionProvider.getCon();
	Statement st=con.createStatement();	
	for(int i=0;i<pname.length;i++){	
	PreparedStatement ps=con.prepareStatement("update product set quantity=quantity- '"+pquantity[i]+"' where name='"+pname[i]+ "'");	
	ps.executeUpdate();
	}
	PreparedStatement ps1=con.prepareStatement("insert into orderp set total=?,ship_to=?,user_email=?, products=?,quantity=?,order_status='processing'");
	ps1.setString(1,total);
	ps1.setString(2,shipadress);
	ps1.setString(3,email);
	ps1.setString(4,h);
	ps1.setString(5,s);
	ps1.executeUpdate();
	session.setAttribute("tot",total);
	session.setAttribute("spgadr",shipadress);
	PreparedStatement ps2=con.prepareStatement("insert into payment set payment_details=?,cvc=?,EXP_date=? ");
	ps2.setString(1,paydetails);
	ps2.setString(2,cvcnumber);
	ps2.setString(3,ed);
	ps2.executeUpdate();
	response.sendRedirect("acs.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("acs.jsp?msg=invalid");
	System.out.println(e);}

%>