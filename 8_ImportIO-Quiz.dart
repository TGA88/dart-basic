import 'dart:io';

void main(List<String> args) {

// use stdout to Display Text to your console
stdout.writeln("please tell me. Do you want to buy?");

// use stdin to read your textinput  from typing on keyboard.
String product =  stdin.readLineSync();

  double price = 1000;
  double discountPrice;

print("product is ${product}");
switch(product) { 
   case  "TV" : { 
      discountPrice = price * 0.05;
      print("discount :5%");
   } 
   break; 
   case "Phone": { 
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
