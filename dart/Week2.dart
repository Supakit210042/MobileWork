
void main(){

   var x = callColor("white");
   print(x);
//send google and https to protocol variable and 443 to port variable
callweb("google",protocol: "https",port: 443);


}
    String callGen(int year) => (year >= 1996)? "Gen Z":"Gen Y";

int callColor([String newColor = "pink"]){

  // dart's array
  List<dynamic> color = ["red","blue","green"];

  color.add(newColor);

// foreach loop
  for(var item in color){
    print(item);
  }
  // return function length of function color
  return color.length;
 }
// function callweb primary and 2 secondary / arrow with print data in function
 void callweb(String web ,{int port = 80 ,String protocol = "http"}) => print("$protocol $web : $port");

 