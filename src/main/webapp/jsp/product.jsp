<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../css/product.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>	prod-discription | Tech House</title>
</head>
<% 
		String em=session.getAttribute("email").toString();
		System.out.print(em);
		if("-1".equals(em)){
			response.sendRedirect("../jsp/product-fnru.jsp");
		}
		%>
<body>

      <main>
        <div class="main-container">
            <div class="product">
                <h1 class="product-title"></h1>
                <div class="product-content">
                    <div class="left">
                        <picture>
                            
                        </picture>
                        <p class="picture-desc">I'm a product description. This is a great place to "sell" your product and grab buyers' attention. Describe your product clearly and concisely. Use unique keywords. Write your own description instead of using manufacturers' copy.</p>
                    </div> 
                    <div class="right">
                        <div class="right-top">
                            <h1 class="main-title"></h1>
                            <p class="id"></p>
                            <p class="bs-price" ></p>
                            <div class="quantity-place">
                                <span>Quantity</span>
                                <input class="quantity-product" id="id_form-0-quantity" min="1" name="form-0-quantity" value="1" type="number">
                            </div>
                            <div class="buttons">
                                <div class="buttons-top">
                                  
                                    <button class="add-cart" type="button">Add to Cart</button>
                                    <button class="comming-soon hide">Coming soon</button>
                                    
                         	    </div>
                                <div class="button-down">
                                   <button class="buy-now" ><a href="../jsp/checkout2.jsp">Buy Now</a></button>
                                </div>
                            </div>
                        </div>
                        <div class="right-down"></div>
                    </div>
                </div>
            </div>
        </div>

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
         <script src="../js/productimport.js"></script>
 		<script src="../js/cart.js" ></script>
        <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    </body>
</html>