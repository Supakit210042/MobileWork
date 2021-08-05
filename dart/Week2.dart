
void main(){

   var x = callColor("white");
   print(x);

callweb("google",protocol: "https",port: 443);


}
    String callGen(int year) => (year >= 1996)? "Gen Z":"Gen Y";

int callColor([String newColor = "pink"]){

  List<dynamic> color = ["red","blue","green"];

  color.add(newColor);

  for(var item in color){
    print(item);
  }
  return color.length;
 }

 void callweb(String web ,{int port = 80 ,String protocol = "http"}) => print("$protocol $web : $port");

 