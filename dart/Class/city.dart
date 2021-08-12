import 'country.dart';
import 'main.dart';
import 'Problem.dart';

class City extends Country with Problem{

  City() : super("Berlin","Eagle");

  void callsuper(){
    print("Capital : "+ super.city);
    super.callHello();
    
  }

  @override
  String callAnimal() {
    return "Eagle";
  }
}