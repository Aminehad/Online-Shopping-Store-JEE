<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Payment | Tech House </title>
    
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <link href="../css/payment.css" rel="stylesheet" type="text/css">
    <link href="../css/variables.css" rel="stylesheet" type="text/css">
    


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500;600;700;800;900&family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
</head>
<body>

    <div class="wrapper">
            <h2>Payment</h2>
            <form action="paynowAction.jsp" method="post">
<%
String[] pquantity=request.getParameterValues("product-quantity");
String[] pname= request.getParameterValues("product-name");
String total=request.getParameter("total-price");
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	
}catch(Exception e){}

%>
<% 
int i=0;
while (i<pname.length){
%>
	
	<input  style="display:none;"   name="p-name" value="<%out.println(pname[i]); %>" > 
	<input  style="display:none;"   name="p-quantity" value="<%out.println(pquantity[i]); %>" > 
	<input  style="display:none;"   name="total" value="<%out.println(total); %>" >
	
<%
i++;	
}
%>
                 <h4>Personal Informations</h4>
                <div class="input-group">
                                <div class="input-box">
                                    <input type="text" placeholder="Full Name" required class="name">
                                    <i class="fa fa-user icon"></i>
                                </div>
                                <div class="input-box">
                                    <input type="text" placeholder="Full Name In Card" required class="name">
                                    <i class="fa fa-user icon"></i>
                                </div>
                </div>
                <div class="input-group">
                                <div class="input-box">
                                    <input type="email" placeholder="Email Adress" required class="name" id="email">
                                    <i class="fa fa-envelope icon"></i>
                                    <div class="error-msg"></div>
                                </div>
                                
                                <div class="input-box">
                                    <input type="text" placeholder="Adress" required class="name" name="adress">
                                    <i class="fa fa-location-dot icon"></i>
                                </div>
                                
                </div>
               
                <div class="input-group">
                                <div class="input-box">
                                    <h4>Payment Details</h4>
                                    <input type="radio" name="pay" id="bc1" checked class="radio">
                                    <label for="bc1"><span class="cards"><img src="../images/cib-removebg.png"alt="cib-photo"/>CIB</span></label>
                                    <input type="radio" name="pay" id="bc2" class="radio">
                                    <label for="bc2"><span class="cards"><img src="../images/eldahabia-removebg.png"alt="eldahabia-photo"/>ElDahabia</span></label>
                                </div>
                </div>
                <div class="input-group">
                                <div class="input-box">
                                    <input type="tel" placeholder="Card Number xxxx xxxx xxxx xxxx" required class="name" id="card" maxlength="19" name="paydet"  onkeypress="return onlyNumberKey(event)">     
                                    <i class="fa fa-credit-card icon"></i>
                                    <div class="error-msg hide">Enter only numbers</div>
                                </div>
                </div>
                <div class="input-group">
                                <div class="input-box">
                                    <input type="tel" placeholder="Card CVC" required class="name" id="cvc" maxlength="3" name="cvnum"onkeypress="return onlyNumberKey(event)">
                                    <i class="fa fa-credit-card icon"></i>
                                </div>
                <div class="input-box">
                                    <select name="month">
                                        <option value="01">1 - January</option>
                                        <option value="02">2 - Febuary</option>
                                        <option value="03">3 - March</option>
                                        <option value="04">4 - April</option>
                                        <option value="05">5 - May</option>
                                        <option value="06">6 - June</option>
                                        <option value="07">7 - july</option>
                                        <option value="08">8 - August</option>
                                        <option value="09">9 - September</option>
                                        <option value="10">10 - October</option>
                                        <option value="11">11 - November</option>
                                        <option value="12">12 - December</option>
                                    </select>
                                    <select name="year">
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                        <option value="2026">2026</option>
                                        <option value="2027">2027</option>
                                        <option value="2028">2028</option>
                                        <option value="2029">2029</option>
                                        <option value="2030">2030</option>
                                        <option value="2031">2031</option>
                                        <option value="2032">2032</option>
                                        <option value="2033">2033</option>
                                        <option value="2034">2034</option>
                                        <option value="2035">2035</option>
                                        <option value="2036">2036</option>
                                    </select>
                                </div>
                </div>
                <div class="input-group">
                                <div class="input-box">
                                    <button type="submit" class="paybutton">PAY NOW</button>
                                </div>
                </div>
            </form>
    </div>
    <script src="https://kit.fontawesome.com/10f80d219b.js" crossorigin="anonymous"></script>
    <script src="../js/payment.js"></script>
</body>
</html>