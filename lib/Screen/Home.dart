import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KMUTNB"),),

      body: Container(
          color: Colors.indigo,
          alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 80,
                    
                    child: Text("cat",style: TextStyle(fontSize: 48),)
                  
                  )

                ],
                 
 ),
      ),

    );
  }
}