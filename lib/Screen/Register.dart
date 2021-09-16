import 'package:flutter/material.dart';
import 'package:mobileappweek1/Config/constant.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

var name ,surname , email , password ;
final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      title: Text("Register page")
      ),
         body:  Form(
           key: formkey,
        child: SingleChildScrollView(
          child: Column(
               
            children: [
              
               Text("Name",style: TextStyle(fontSize: 30,),),
              txtname(),
              txtsurname(),
              txtemail(),
              txtPassword(),
              btnSubmit(),
            ],
          ),
          
          ),
        ),
        ),
        );
           
          
  }
  Widget txtname(){
    return Container(
      margin: EdgeInsets.all(30),
      child: TextFormField(
                  style: TextStyle(color: TColor,
                  fontSize: 24,
                  ),
                   decoration: InputDecoration(
                  labelText: 'Name',
                  icon:Icon(Icons.account_circle),
                    hintText: "Please input Your name",
                   ), 
                   validator: (value) {
                     if(value!.isEmpty){
                       return 'Please fill your Intel in this site.';
                     }else if (value.length < 2){
                        return 'Please fill your Intel more than 2 Letter.';
                     }
                   },
                   onSaved: (value){
                     name = value;
                   },
                  ),
    );
  }
    Widget txtsurname(){
    return Container(
      margin: EdgeInsets.all(30),
      child: TextFormField(
                  style: TextStyle(color: TColor,
                  fontSize: 24,
                  ),
                   decoration: InputDecoration(
                  labelText: 'Surname',
                  icon:Icon(Icons.add_reaction_sharp),
                    hintText: "Please input Your Surname",
                   ), 
                   validator:  (value){
                     if (value!.isEmpty){
                       return 'Please fill your Intel in this site.';
                     }else if (value.length < 2){
                        return 'Please fill your Intel more than 2 Letter.';
                     }
                   },
                     onSaved: (value){
                     surname = value!.trim();
                   },
                  ),
    );
}
 Widget txtemail(){
    return Container(
      margin: EdgeInsets.all(30),
      
      child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: TColor,
                  fontSize: 24,
                  ),
                   decoration: InputDecoration(
                  labelText: 'Email',
                  icon:Icon(Icons.add_to_photos),
                    hintText: "Please input Your Email",
                   ), 
                   validator:  (value){
                     if (!(value!.contains('@'))){
                       return 'Please fill @ in your Email.';

                    }else if (!(value.contains('.'))){
                       return 'Please fill . in your Email';
                    }
                   },
                     onSaved: (value){
                     email = value;
                   },
                  ),
    );
}
Widget txtPassword(){
    return Container(
      margin: EdgeInsets.all(30),
      child: TextFormField(
            obscureText: true,
                  style: TextStyle(
                  fontSize: 24,
                  ),
                   decoration: InputDecoration(
                  labelText: 'Password',
                  icon:Icon(Icons.add_ic_call_rounded),
                    hintText: "Please input Your Password",
                   ), 
                   validator:  (value){
                     if (value!.isEmpty){
                       return 'Please fill your Intel in this site.';
                     }else if (value.length < 2){
                        return 'Please fill your Intel more than 2 Letter.';
                     }
                   }
                   ,
                     onSaved: (value){
                     password = value;
                   },
                  ),
    );
}
Widget btnSubmit() =>  ElevatedButton(
  style: ElevatedButton.styleFrom(
    //shape: Size(60, 60),
    ),
  onPressed: (){
  
  print("HEllo");
  if(formkey.currentState!.validate()){
    formkey.currentState!.save();
    print("name : $name ,$surname , $email ,$password");
  }
  
},

child: Text('Submit'));
}