<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="../css/about-us.css" rel="stylesheet" type="text/css">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link href="../css/cart.css" rel="stylesheet" type="text/css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Tech House | About Us</title>
</head>
<% 
		String em=session.getAttribute("email").toString();
		System.out.print(em);
		if("-1".equals(em)){
			response.sendRedirect("../jsp/about-us-fnru.jsp");
		}
		%>
<body>
<div class="cart-sidebar">
            <div class="cart-header">
                <img class="cart-close" src="../images/close-icone_2.jpg">
                <div class="cart-title">Cart</div>
            </div>
            <div class="cart-body">
                <div class="cart-main">
                    <div class="cart-list">
                       
                    </div>
                    <div class="cart-total">
                        <div class="cart-total-title">Total Price</div>
                        <div class="total-price">0$</div>
                    </div>
                </div>
                <hr/>
                <div class="cart-btn">
                    <a href="../jsp/checkout.jsp" class="btn-checkout">Checkout</a>
                </div>
            </div>
        </div>
      <main>
          <!-- main-paragraphe -->
          <div class="main-content">
                <div class="main-title">
                    About TechHouse
                </div>
                <hr/>
                <div class="main-p">
                    Founded in 2022, TechHouse began selling PC components,
                    all sorts of electronics and helped popularize the ''Tech is 
                    easy'' movement,and in doing so, developed a cult following 
                    among Tech and Elctronics enthusiasts.<br>Since then, TechHouse 
                    Inc. is the fastest growing tech-focused e-retailer<br>  
                    in North Africa. <br> Today, customers turn to TechHouse to shop 
                    for the latest PC components, consumer electronics, smart 
                    home and gaming products. 
                    TechHouse is ranked as one of the best online shopping 
                    destinations, and the company regularly earns industry-leading 
                    customer service ratings.
                    TechHouse is headquartered in Algiers, with North african 
                    distribution facilities located throughout Algeria,Tunisia and 
                    Morocco.
                </div>
                <hr/>
          </div>
          <div class="main-img">
              <img src="../images/Component 1.png" class="img1">
          </div>
        
      </main><%    
          String email=session.getAttribute("email").toString();
            		int z=0;
        try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs1=st.executeQuery("select *from admin where email='"+email+"'");
			while(rs1.next()){z=1;}
			if (z==1){%>
				<script src="../js/sharingscript-admin.js"></script> <%}
			if(z==0){%>
				 <script src="../js/sharingscript.js"></script>  <%}
			}
			catch(Exception e){
				System.out.println(e);
			}
                
         %>     
 		<script src="../js/cartall.js"></script> 
        <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    </body>
</html>