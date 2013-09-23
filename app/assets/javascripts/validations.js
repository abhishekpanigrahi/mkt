//validation for products//
function validate_product_details(){
	if(document.getElementById("product_name").value == ""){
		alert("Enter Product Name");
		document.getElementById("product_name").focus();
		return false;
	}
	
	if(document.getElementById("product_brand").value == ""){
		alert("Enter Product Brand");
		document.getElementById("product_brand").focus();
		return false;
	}
	if(document.getElementById("product_title").value == ""){
		alert("Enter Product Title");
		document.getElementById("product_title").focus();
		return false;
		}
	 	
		if(document.getElementById("product_price").value== ""){
		
			alert("Enter Product Price");
			document.getElementById("product_price").focus();
			return false;
		}
		
		if(document.getElementById("product_cut_price").value== ""){
		
			alert("Enter Product Cut Price");
			document.getElementById("product_cut_price").focus();
			return false;
		}
			
		if(document.getElementById("product_quantity").value== ""){
			
			alert("Enter Product Quantity");
			document.getElementById("product_quantity").focus();
			return false;
		}
		
	}
	