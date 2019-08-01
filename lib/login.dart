
import 'package:flutter/material.dart';
import 'package:first_project/Signup.dart';
import 'dashbord.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp (
   home: Scaffold(
     resizeToAvoidBottomPadding:false ,
     backgroundColor: Colors.blueAccent,
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
         obscureText: true, keyboardType: TextInputType.multiline,
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
           onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Dashboard()));
           },
         ),
       ),
       Padding(
         padding:EdgeInsets.only(left:40,right:40,top:20),
         child: RaisedButton(
           child:Text("Signup"),
           onPressed: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Signup()),);
           },
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



