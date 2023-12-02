<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="../css/checkout.css" rel="stylesheet" type="text/css">
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
    <title> Checkout | Tech House</title>
</head>
<body>

      <main>
      <form action="payment.jsp" method="post">
          <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <td>Remove</td>
                            <td>Image</td>
                            <td>Product</td>
                            <td>Price</td>
                            <td>Quantity</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- <tr>
                            <td><img class="remove-btn" src="../images/trash.png"></td>
                            <td><img class="product-img" src="../images/laptop3-shop.jpg"alt="product-img"></td>
                            <td><p class="product-name" name="product-name">Slam</p></td>
                            <td><p class="product-price" name="product-price">200$</p></td>
                            <td><input class="product-quantity" id="id_form-0-quantity" min="1" name="product-quantity" value="1" type="number"></td>
                            <td><p class="product-total"></p></td>
                        </tr> -->
                    </tbody>
                </table>
                <div class="no-item hide">
                    The cart is empty please fill it up
                </div>
            </div> 
            <div class="table-container second">
                <div class="row">
                    <div class="cart-total-sec">Cart Total</div>
                    <div class="cart-total-content">
                        <div class="content-row"><p>Subtotal</p><p class="sub-total"></p></div>
                        <div class="content-row"><p>Shipping</p><p class="sub-shipping"></p></div>
                    </div>
                    <div class="cart-total-total">
                        <div class="total-row"><p>Total</p><p class="total" ></p></div>
                      	 <input  style="display:none;" name="total-price" class="total-price"></input> 
                        <div class="total-row"><a href=""><button class="total-btn">Proceed to checkout</button></a></div>
                    </div>
                </div>
            </div> 
            </form>
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
 		 <script src="../js/checkout.js"></script>
        <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    </body>
</html>