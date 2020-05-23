void main(List<String> args) {
/*
 if (expression){
   doing when expression is true
 }
 else{
   doing when expression is false
 }
 */

  double price = 1000;
  double discountPrice;

/* 500 to 999 discount 5% 
  1000 to 1999 discount 10%
  2000 up discount 15%
*/
  if (price >= 500 && price < 1000) {
    discountPrice = price * 0.05;
  } else if (price >= 1000 && price < 2000) {
    discountPrice = price * 0.1;
  } else if (price >= 2000) {
    discountPrice = price * 0.15;
  } else {
    discountPrice = 0;
  }

  print("price : ${price} ");
  print("discount price : ${discountPrice}");
}
