const header = document.createElement("header");
header.innerHTML = `
    <div class="nav-bar-main">
    <div class="container">
    <div class="nav-bar-sec1">
        <img class="box" href="../images/akar-icons_shipping-box-01.png">
        <p class="shipping-free">Free Shipping for order over 500$</p>
    </div>
    <nav class="nav-bar-sec2">
        <img src="../images/menu-icon.png" alt="Menu icone" class="ham-icone">
        <ul class="nav-elements">
            <li class="nav-element"><a href="../jsp/index.jsp" class="nav-bar-link">Home</a></li>
            <li class="nav-element"><a href="../jsp/about-us.jsp" class="nav-bar-link">About Us</a></li>
            <li class="nav-element"><a href="../jsp/contact-us.jsp" class="nav-bar-link">Contact Us</a></li>
            <li class="nav-element"><a href="#" class="nav-bar-link">Call Us 06606666</a></li>
        </ul>
    </nav>
    </div>
    </div>
    <div class="search-bar-main">
    <div class="container">
        <div class="search-bar-sec1">
            <div class="logo">
                <a href="../jsp/index.jsp"><img src="../images/new-logo.jpg" alt="logo"></a>
            </div>
            <form action="searchAction.jsp" method ="post" class="search-bar">
                <label class="search-field">
                    <input type="text"  placeholder="Search your products...." name="search" id="search"/>
                </label>
                <div class="search-bar-logo-place">
                    <input class="search-bar-logo" type="submit" value="Search"/>
                </div>
            </form>
        </div>
        <!-- AFC: MY Account - My Favorites - My Cart -->
        <div class="AFC">
            <nav class="AFC-nav">
                <ul class="AFC-nav-elements">
                    <li class="AFC-nav-element account"><img src="../images/codicon_account.png" alt="account" class="AFC_icone"><a href="../jsp/profile.jsp">My Account</a></li>
                    <li class="AFC-nav-element cart"><img src="../images/bi_cart.png" alt="cart" class="AFC_icone">My Cart</li>
                    <li class="AFC-nav-element account"><img src="../images/icons8-control-panel-64.png" class="AFC_icone"><a href="../admin/adminDash.jsp">My Panel</a></li>
               	
                </ul>
            </nav>
        </div>
    </div>
    </div>
    <div class="menu">
    <div class="links container">
        <ul class="menu-elements">
            <li class="menu-element"><a href="../jsp/shop-all.jsp" class="menu-links" >Shop All</a></li>
            <li class="menu-element" ><a href="../jsp/computers.jsp" class="menu-links" >Computers</a></li>
            <li class="menu-element" ><a href="../jsp/tablets.jsp" class="menu-links" >Tablets</a></li>
            <li class="menu-element"><a href="../jsp/drones.jsp" class="menu-links" >Drones</a></li>
            <li class="menu-element"><a href="../jsp/mobile.jsp" class="menu-links" >Mobile</a></li>
            <li class="menu-element"><a href="../jsp/wearable.jsp" class="menu-links" >Wearable tech</a></li>
            <li class="menu-element"><a href="../jsp/sale.jsp" class="menu-links" >Sale</a></li>
        </ul>
    </div>
    </div>
    <div class="responsive-menu ">
                <div class="close-place"><img class="close-icone-responsive" src="../images/close-icone 2.jpg"></div>
                <ul class="responsive-list">
                    <li class="responsive-element"><a href="../jsp/index.jsp" class="responsive-bar-link">Home</a></li>
                    <li class="responsive-element"><a href="../jsp/about-us.html" class="nresponsive-bar-link">About Us</a></li>
                    <li class="responsive-element"><a href="../jsp/contact-us.jsp" class="responsive-bar-link">Contact Us</a></li>
                    <li class="responsive-element"><a href="#" class="responsive-bar-link">Call Us 06606666</a></li>
                </ul>
    </div>

`;

const footer = document.createElement("footer");
footer.innerHTML = `

<div class="footer-content">

    <div class="footer-sec">
        <h1 class="sec-title">Store Location</h1>
        <ul class="sec-elements">
            <li class="sec-element">360S Ouargla,Algeria</li>
            <li class="sec-element">info@Techouse.com</li>
            <li class="sec-element">+213666983624</li>
        </ul>
        <ul class="sec-icones">
            <li class="icone-links"><a href="https://www.facebook.com/" target="_blank" class="footer-links"><i class="fa-brands fa-facebook-square"></i></a></li>
            <li class="icone-links"><a href="https://www.instagram.com/" target="_blank" class="footer-links"><i class="fa-brands fa-instagram"></i></a></li>
            <li class="icone-links"><a href="https://www.youtube.com/" target="_blank" class="footer-links"><i class="fa-brands fa-youtube"></i></a></li>
        </ul>
    </div>

    <div class="footer-sec">
        <h1 class="sec-title">Shop</h1>
        <ul class="sec-elements">
            <li class="sec-element"><a href="../jsp/shop-all.jsp" class="footer-links">Shop All</a></li>
            <li class="sec-element"><a href="../jsp/computers.jsp" class="footer-links">Computers</a></li>
            <li class="sec-element"><a href="../jsp/tablets.jsp" class="footer-links">Tablets</a></li>
            <li class="sec-element"><a href="../jsp/drones.jsp" class="footer-links">Drones</a></li>
            <li class="sec-element"><a href="../jsp/mobile.jsp" class="footer-links">Smart Phones</a></li>
            <li class="sec-element"><a href="../jsp/wearable.jsp" class="footer-links">Wearable Tech</a></li>
            <li class="sec-element"><a href="../jsp/sale.jsp" class="footer-links">Sales</a></li>
        </ul>
    </div>
    <div class="footer-sec">
        <h1 class="sec-title">Customer Support</h1>
        <ul class="sec-elements">
            <li class="sec-element"><a href="../jsp/contact-us.jsp" class="footer-links">Contact Us</a></li>
            <li class="sec-element"><a href="../jsp/about-us.jsp" class="footer-links">About Us</a></li>
        </ul>
    </div>

    <div class="footer-sec">
        <h1 class="sec-title">Policy</h1>
        <ul class="sec-elements">
            <li class="sec-element"><a href="#" class="footer-links">Shipping and Returns</a></li>
            <li class="sec-element"><a href="#" class="footer-links">FAQ</a></li>
            <li class="sec-element"><a href="#" class="footer-links">Payment Mehods</a></li>
            <li class="sec-element"><a href="#" class="footer-links">Terms and Conditions</a></li>
        </ul>
    </div>
    
</div>
`;

document.body.append(footer);
document.body.prepend(header);

    
    function cartSlide(){
        const cart_btn = document.querySelector(".cart");
        const cart_sidebar = document.querySelector(".cart-sidebar");
        const cart_close = document.querySelector(".cart-close");
        
        cart_btn.addEventListener("click" , () => {
            console.log("slm");
            cart_sidebar.style.right = "0";
        })
        
        cart_close.addEventListener("click" , () => {
            cart_sidebar.style.right = "-700px";
        })
        }

    cartSlide();
    
    var menuIcone = document.querySelector(".ham-icone");
menuIcone.addEventListener("click",()=>{
    var responsiveMenu = document.querySelector(".responsive-menu");
        responsiveMenu.style.right = "0";
})


var closeMenuResponsive = document.querySelector(".close-icone-responsive");
closeMenuResponsive.addEventListener("click",()=>{
    var responsiveMenu = document.querySelector(".responsive-menu");
        responsiveMenu.style.right = "-4000px";
})





var searchInput = document.querySelector("#search");

searchInput.addEventListener("change" ,()=>{
    var inputWordsVlaues = searchInput.value.split(" ");
    inputWordsVlaues.forEach(inputWordsVlaues => {
        
        verifyInjection(inputWordsVlaues.toLowerCase());
    });
    
})


function verifyInjection(inputValue) {
    var injectionWords = ["insert","drop","update","or","and","select","from","table","values","where","alter"]
    if (injectionWords.includes(inputValue)){
        alert("cant use this word:" +inputValue);
        searchInput.value = "";
    }
        
}



    
    