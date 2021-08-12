import 'country.dart'; // import file
import 'city.dart';

void main() {
  /*
  Country item = new Country.Berlin("Berlin","Eagle",""); //comstructor
  //------------------------------------------------
   item.callHello();
  print("Welcome to " + item.country);
 
  print("Capital is "+ item.city);
 print(item.callAnimal) ;
 print("Color of country : "+item.color);
  */

    var order = City();
  print("Welcome to " + order.country);
 
  order.callsuper();

  print(order.callAnimal());
  
  order.callproblem();
}