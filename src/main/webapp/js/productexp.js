"use strict";

const init = function(e) {
    //clear local storage
    localStorage.removeItem("details");
    localStorage.removeItem("img");
    localStorage.removeItem("price");
    localStorage.removeItem("position");
    localStorage.removeItem("id");
    
    localStorage.removeItem("outofstock");
    localStorage.removeItem("quantity");

   
      
    //get all Items
    var item_details;
    var item_img;
    var item_price;
    var item_quantity_BD;
    var item_id;
    var item = document.querySelectorAll(".item-link");
    

       
        item.forEach(item => {
			
            item.addEventListener("click",()=>{
				item_quantity_BD = item.querySelector(".p-q");
				item_id= item.querySelector(".p-id").value;
                item_details = item.querySelector(".details");
                item_img = item.querySelector("picture");
                item_price = item.querySelector(".bs-price");
                localStorage.setItem("details",JSON.stringify(item_details.innerHTML));
                localStorage.setItem("img",JSON.stringify(item_img.innerHTML));
                localStorage.setItem("price",JSON.stringify(item_price.innerHTML));
                localStorage.setItem("outofstock",JSON.stringify(item_quantity_BD.value));
                localStorage.setItem("id",JSON.stringify(item_id));
        
                console.log(item_img,item_price,item_details);
            })
            item_quantity_BD = item.querySelector(".p-q");
            
            if(item_quantity_BD.value==0){
				var item_stock = item.querySelector(".outofstock");
				var item_bs_price = item.querySelector(".bs-price");
				item_stock.classList.remove("hide");
				item_stock.innerHTML = "Out of Stock";
			}
            	
        });

        
 
    
};

//functions



document.addEventListener('DOMContentLoaded' , function(){init();});