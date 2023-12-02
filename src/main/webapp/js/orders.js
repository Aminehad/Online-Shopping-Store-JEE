var productsListElement = document.querySelectorAll("#products-list");
var quantitysListElement = document.querySelectorAll("#quantity-list");

for (var x=0;x<productsListElement.length;x++){
	console.log("slm");
	
	var productsList = productsListElement[x].innerHTML;
	var quantitysList = quantitysListElement[x].innerHTML;
	
	productsListElement[x].innerHTML ="";
	quantitysListElement[x].innerHTML = "";
	
	productsList = productsList.split("$");
	quantitysList = quantitysList.split("$");
	
	for(var i=0;i<productsList.length-1;i++){
		productsListElement[x].innerHTML += "-"+productsList[i]+"<br>";
	}
	
	for(var i=0;i<quantitysList.length-1;i++){
		quantitysListElement[x].innerHTML += quantitysList[i]+"<br>";
	}
	
	
	
}


console.log(quantitysList);
console.log(productsList);