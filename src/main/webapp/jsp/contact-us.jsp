<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/header.css" rel="stylesheet" type="text/css">
    <link href="../css/footer.css" rel="stylesheet" type="text/css">
    <link href="../css/contact-us.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    <link href="../css/cart.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Tech House | Contact Us</title>
</head>
<% 
		String em=session.getAttribute("email").toString();
		System.out.print(em);
		if("-1".equals(em)){
			response.sendRedirect("../jsp/contact-us-fnru.jsp");
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
          <div class="contact-us">
              <h1 class="c-title">Contact Us</h1>
          </div>
			
          <div class="submit">
              <div class="submit-area">
                <form  class="contact-form" action="contact-usAction.jsp" method="post">
                   <div class="form-group">
                        <label>Full Name</label>
                        <input name="name" type="text" class="" placeholder="Your first and last name" required />
                        <div class="error-hint hide">Your name is required</div>
                   </div>
                   <div class="form-group">
                        <label>Email</label>
                        <input name="email" type="text" class="" placeholder="Your Email" required/>
                        <div class="error-hint hide">Your Email is invalid</div>
                   </div>
                   <div class="form-group">
                        <label>Subject</label>
                        <input name="subject" type="text"  placeholder="Your Subject" required/>
                        <div class="error-hint hide">The subject is required</div>
                   </div>
                   <div class="form-group">
                        <label>Comments</label>
                        <textarea name="message"type="text"  placeholder="Your Comments" required></textarea>
                        <div class="error-hint hide">Your comment is required</div>
                   </div>
                   <hr />
                   <button>Submit</button>
                </form>
                <div class="thank-you hide">We thank you for your feedback</div>
                <button class="submit-again hide">Submit Again</button>
              </div>
              <div class="submit-sidebar">
                <div class="sidebar-sec">
                    <h1 class="s-title">Customer service contact</h1>
                    <p class="s-content">Question the Customer Service department can be emailed to:</p>
                    <p class="s-content"><br>Email:CS@housetech.com</p>
                </div>
                <div class="sidebar-sec">
                    <h1 class="s-title">Fellow us on our official accounts:</h1>
                    <ul class="sidebar-list-elements">
                            <li class="icone-links"><a href="#" class="list-links"><i class="fa-brands fa-facebook-square"></i></a></li>
                            <li class="icone-links"><a href="#" class="list-links"><i class="fa-brands fa-instagram"></i></a></li>
                            <li class="icone-links"><a href="#" class="list-links"><i class="fa-brands fa-youtube"></i></a></li>
                    </ul>
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
         <script src="../js/contact-us.js"></script>
 		<script src="../js/cartall.js"></script> 
        <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    </body>
</html>
      