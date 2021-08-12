import 'city.dart';
class Country{



  var country = "Germany";   
  var city;    
  var _amimal = "Cat";       
  static var color1 = "Orange"; 

    Country(this.city,this._amimal){} // method

    Country.Berlin(String city,String animal,String color) : this(city,animal);



  void callHello(){
  print("Guten Morgen"); // class

  }
  String callAnimal(){
   // print("The Animal of Country is "+this.amimal);
   return this._amimal;
  }

}
