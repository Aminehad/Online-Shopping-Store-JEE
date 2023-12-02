<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../css/shop-all.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    <link href="../css/cart.css" rel="stylesheet" type="text/css">
    
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Shop All | Tech House</title>
</head>
<% 
		String em=session.getAttribute("email").toString();
		System.out.print(em);
		if("-1".equals(em)){
			response.sendRedirect("../jsp/shop-all-fnru.jsp");
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
          <div class="main-container">
              <div class="main-title">Shop All</div>
              <div class="items-section">
                  <ul class="items">
                  <%  
   try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from product ");
	while(rs.next()){%>
                      <li class="item">
                      	  
                          <a href="product.jsp" class="item-link">
                          	<input style="display:none;" value=<%=rs.getString(4) %> class="p-q"/>
                          	<input style="display:none;" value=<%=rs.getString(2) %> class="p-id"/>
                            <div class="sale no-sale">
                          
                            SALE</div>
                            <picture>
                                <img class="item-img" src=<%=rs.getString(6) %>> 
                            </picture>
                            <div class="details">
                                <% out.print(rs.getString(1)); %>
                            </div>
                            <p class="outofstock hide" style="font-family: 'Open Sans', sans-serif; padding: .5em .8em; color: var(--clr-violet); font-size: 1.1rem;"></p>
                            <p class="bs-price">$ <% out.print(rs.getString(3));%></p>
                        </a>
                      </li>
                  <% }
   }         
       catch(Exception e){
        System.out.println(e);
       
        }%>
                   
                  </ul>
              </div>

          </div>
      </main>
      <%    
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
        <script src="../js/productexp.js" ></script>
 		 <script src="../js/cartall.js"></script>
        <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    </body>
</html>