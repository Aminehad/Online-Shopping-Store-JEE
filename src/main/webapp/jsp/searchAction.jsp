<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link href="../css/shop-all.css" rel="stylesheet" type="text/css">
    <link href="../css/cart.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="../css/shop-all.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Tech House | </title>
</head>
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
          	<div class="main-title"></div>
              <div class="items-section">
                  <ul class="items">
                 <%
			int z=0;
			try{
				String search =request.getParameter("search");
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from product where name like '%"+search+"%' or category like '%"+search+"%'");
				while(rs.next())
				{	
					z=1;%>
		
                      <li class="item">
                          <a href="product.jsp" class="item-link" >
                            <div class="sale no-sale">SALE</div>
                            <picture>
                                <img class="item-img" src=<%=rs.getString(6) %>>
                            </picture>
                            <div class="details">
                                <% out.print(rs.getString(1)); %>
                            </div>
                            <p class="bs-price"><% out.print(rs.getString(3));%></p>
                        </a>
                      </li>        
                 <% }
}
catch(Exception e){
	System.out.println("e");
	}
			if (z==0){%>
				<div class="not-found">
					<h1 >No results found</h1>
					<br/>
					<h2 >Sorry we couldn't find any results.</h2>
				</div>
				
			<%}

%>  
              
			 </ul>
            </div>
          </div>
      </main>
      <%    
          String email=session.getAttribute("email").toString();
            		int t=0;
        try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs1=st.executeQuery("select *from admin where email='"+email+"'");
			while(rs1.next()){t=1;}
			if (t==1){%>
				<script src="../js/sharingscript-admin.js"></script> <%}
			if(t==0){%>
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