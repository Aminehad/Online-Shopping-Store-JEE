cartImport();
    // //cart change item quantity
    // var quantityInputs = document.getElementsByClassName("quantity");
    // for (var i = 0 ; i < quantityInputs.length ; i++){
    //     var input = quantityInputs[i];
    //     input.addEventListener("change", quantityChanged)
    // }

    // //cart add item
    // var addToCartButton = document.querySelector(".add-cart");
    // addToCartButton.addEventListener("click" , addToCartClicked)

    // document.querySelector("btn-checkout").addEventListener("click" , checkoutClicked);

    //addValue();

    
    
  
    function addValue(){




    var productNames = document.querySelectorAll(".product-name");//attribute name is value
    productNames.forEach(productNames => {
        
        productNames.setAttribute("value",productNames.innerHTML);
    });




}


function cartImport(){
    //cart show 
    var cartTitles = [];
    var cartPrices = [];
    var cartQuantity = [];
    var cartImages = [];
    var cartRowTitle = document.getElementsByClassName("item-title");

    cartTitles = JSON.parse(localStorage.getItem("cartTitles"));
    cartPrices = JSON.parse(localStorage.getItem("cartPrices"));
    cartQuantity = JSON.parse(localStorage.getItem("cartQuantity"));
    cartImages = JSON.parse(localStorage.getItem("cartImages"));

    

    for ( var i = 0 ; i <cartPrices.length ; i++){
	    if(cartRowTitle[i]==cartTitles[i])
	    	console.log("slm");
	    else
            addItemToCart(cartTitles[i], cartPrices[i], cartQuantity[i], cartImages[i]);
    };

    
}


function addItemToCart(product_title, product_price, product_quantity, product_img){
    

    var cartRow = document.createElement("div");
    
    cartRow.className = "cart-item";
    cartRow.innerHTML= `<div class="item-x">
                            <div class="product-img-x">
                                ${product_img}
                            </div>
                            <div class="item-content-x">
                                <div class="item-title-x">${product_title}</div>
                                <div class="item-price-x">${product_price+"$"}</div>
                                <div class="item-quantity-x"><input class="quantity" id="id_form-0-quantity" min="1" name="form-0-quantity" value="1" type="number"></div>
                            </div>
                        </div>
                        <div class="remove-item"><img class="remove-btn" src="../images/trash.png"></div>`;
    var cartList = document.querySelector(".cart-list");
    cartList.append(cartRow);
    var quantityElement = document.querySelector(".quantity");
    quantityElement.value = product_quantity;
    
   
    
    //slide the cart again
    const cart_sidebar = document.querySelector(".cart-sidebar");
    cart_sidebar.style.right = "0";

    cartRow.getElementsByClassName("remove-btn")[0].addEventListener("click" , removeCartItem);
    cartRow.getElementsByClassName("quantity")[0].addEventListener("change", quantityChanged);
    
}


function removeCartItem(event){
    var buttonClicked = event.target;
    buttonClicked.parentElement.parentElement.remove();
    var titleToRemove = buttonClicked.parentElement.parentElement.querySelector(".item-title-x").innerHTML;
    console.log(titleToRemove);
    var cartTitles = JSON.parse(localStorage.getItem("cartTitles"));
    var cartPrices = JSON.parse(localStorage.getItem("cartPrices"));
    var cartQuantity = JSON.parse(localStorage.getItem("cartQuantity"));
    var cartImages = JSON.parse(localStorage.getItem("cartImages"));
                     
                     
                     
    for ( var i = 0 ; i < cartTitles.length ; i++ ){
        if(cartTitles[i] === titleToRemove)
            {
                cartTitles.splice(i,1);
                cartPrices.splice(i,1);
                cartQuantity.splice(i,1);
                cartImages.splice(i,1);
            }
    };

    localStorage.setItem("cartTitles",JSON.stringify(cartTitles));
    localStorage.setItem("cartPrices",JSON.stringify(cartPrices));
    localStorage.setItem("cartQuantity",JSON.stringify(cartQuantity));
    localStorage.setItem("cartImages",JSON.stringify(cartImages));
    updateCartTotal();
}



function quantityChanged(event){
    var input = event.target;
    if(isNaN(input.value) || input.value <=0){
        input.value = 1;
    }
    
    savePrice(input.value);
    
}

function updateCartTotal(){
    var cartItemContainer = document.querySelector("tbody");
    var cartRows = cartItemContainer.getElementsByTagName("tr");
    var total = 0;
    for ( var i = 0 ; i< cartRows.length ; i++){
        var cartRow = cartRows[i];
        var priceElement = cartRow.getElementsByClassName("product-price")[0];
        var quantityElement = cartRow.getElementsByClassName("product-quantity")[0];
        
        var price = priceElement.innerHTML;
        var quantity = quantityElement.value;
        price = parseFloat(price.replace("$" , ""));
        

        total = total + (price * quantity);
    }
    total = Math.round(total * 100 ) / 100;

    document.getElementsByClassName("sub-total")[0].innerHTML = total+"$";
    

}






function savePrice(value){
    
    var quantityElemnts = document.getElementsByClassName("product-quantity");
    var cartQuantity = JSON.parse(localStorage.getItem("cartQuantity"));
    for(var i = 0; i < quantityElemnts.length; i++){
        cartQuantity[i] = quantityElemnts[i].value;
    }

    localStorage.setItem("cartQuantity",JSON.stringify(cartQuantity));

}
//cart remove item
var removeCartItemButtons = document.getElementsByClassName("remove-btn");

for (var i = 0 ; i < removeCartItemButtons.length ; i++){
    var removeButton = removeCartItemButtons[i];
    removeButton.addEventListener("click" , removeCartItem)
}