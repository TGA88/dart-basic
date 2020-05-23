void main(List<String> args) {
/*
switch(variable_expression) { 
   case constant_expr1: { 
      // statements; 
   } 
   break; 
  
   case constant_expr2: { 
      //statements; 
   } 
   break; 
      
   default: { 
      //statements;  
   }
   break; 
} 
 */

String product = "TV";
  double price = 1000;
  double discountPrice;

/* product is 
TV discount 5%
phone discount 10%
*/
print("product is ${product}");
switch(product) { 
   case  "TV" : { 
      discountPrice = price * 0.05;
      print("discount :5%");
   } 
   break; 
   case "phone": { 
       discountPrice = price * 0.1;
      print("discount :10%");
   } 
   break; 
   default: { 
      //statements;  
       discountPrice = 0;
      print("discount : No discount");
   }
   break; 
} 

  print("price : ${price} ");
  print("discount price : ${discountPrice}");
}
