<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar (200),email varchar (200)primary key,mobileNumber bigint,password varchar(200),adress varchar(300))";
	String q2="create table product (name varchar(200),id int auto_increment primary key,price float,quantity int,category varchar(200),path varchar(500))";
	String q3="create table orderp (id int not null auto_increment primary key,total float,ship_to varchar(300),user_email varchar(200),products varchar(500),quantity varchar(500),order_status varchar(200))";
	String q4="create table admin(email varchar(200) primary key,password varchar(200))";
	String q5="create table payment(id int not null auto_increment primary key,payment_details varchar(300),cvc int,EXP_date varchar(100))";
	String q6="create table messages(name varchar(200),email varchar(200),subject varchar(200),comments varchar(800))";
	//System.out.print(q1);
	//System.out.print(q2);
	//System.out.print(q3);
	//System.out.print(q4);
	//System.out.print(q5);
	System.out.print(q6);
	//st.execute(q1);
	//st.execute(q2);
	//st.execute(q3);
	//st.execute(q4);
	//st.execute(q5);
	st.execute(q6);
	System.out.print("table created");
	con.close();
}
catch(Exception e){
	System.out.print(e);	
}
%>