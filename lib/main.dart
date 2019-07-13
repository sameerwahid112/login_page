

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp (
   home: Scaffold(
     backgroundColor: Colors.amberAccent,
     appBar: AppBar(
       title: Text("logIn Screen"),
     ),
     body: Container(
       height: 500,
       width:500,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
       Hero(tag:'logo',
       child : FlutterLogo(size:80),
       ),
      Padding (padding: EdgeInsets.only(left: 20,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"Email"),
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 20,right: 20),
       child: TextFormField(
         obscureText: true,
         decoration: InputDecoration(hintText:"password"),
       ),
       ),
       Padding(
         padding: EdgeInsets.only(left: 40, right :40, top :20),
         child: Align(alignment: Alignment.centerRight,
         child: Text("Forgot password "),
         )
       ),
       Padding(
         padding:EdgeInsets.only(left:40,right:40,top:20),
         child: RaisedButton(
           child:Text("Login"),
           onPressed: (){},
         ),
       ),
       Padding(
         padding:EdgeInsets.only(left:24,right:40,top:20),
         child:Text("Become a pd patner"),

       ),
       ],
     )
     )
   ),
   ); 
  }
}



