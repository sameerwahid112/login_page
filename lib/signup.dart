import 'package:flutter/material.dart';
import 'package:first_project/dashbord.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(Signup());

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
final username=TextEditingController();
final userCnic=TextEditingController();
final userntn=TextEditingController();
final userNumber=TextEditingController();
final userEmail=TextEditingController();
final userPassword=TextEditingController();
final userAddress=TextEditingController();

FirebaseAuth firebaseAuth= FirebaseAuth.instance;

@override
void dispose(){
super.dispose();
username.dispose();
userCnic.dispose();
userntn.dispose();
userNumber.dispose();
userEmail.dispose();
userAddress.dispose();
userPassword.dispose();

}


  @override
  Widget build(BuildContext context) {
    return  MaterialApp (
   home: Scaffold(
     resizeToAvoidBottomPadding:false ,
     backgroundColor: Colors.amberAccent,
     appBar: AppBar(
       title: Text("Signup Screen"),
     ),
     body: Container(
       height: 1000,
       width:1000,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
       Hero(tag:'logo',
       child : FlutterLogo(size:50),
       ),
      Padding (padding: EdgeInsets.only(left: 10,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"YOUR NAME"),
         controller: username,
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 10,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"CNIC"),
         controller: userCnic,
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 10,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"NTN number"),
         controller: userntn,
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 10,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"Email"),
         controller: userEmail,
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 10,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"CONTACT"),
         controller: userNumber,
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 10,right:20),
       child: TextFormField(
         decoration: InputDecoration(hintText:"ADDRESS"),
         controller: userAddress,
       ),
       ),
       Padding (padding: EdgeInsets.only(left: 10,right: 20),
       child: TextFormField(
         obscureText: true,
         decoration: InputDecoration(hintText:"password"),
       ),
       ),
       
       Padding(
         padding:EdgeInsets.only(left:40,right:40,top:20),
         child: RaisedButton(
           child:Text("Signup"),
           onPressed: (){
             
         if (userEmail.text.isEmpty || userPassword.text.isEmpty) {
               print("You have to fill all the Details");
                    }
              else
                {
                      createuser();
                      // Navigator.pushReplacement(context,
                      //   MaterialPageRoute(builder: (context) => Dashboard()));
                    }
                      
           
            
           },
         ),
       ),
       Padding(
         padding:EdgeInsets.only(left:24,right:40,top:20),
         child:Text("Come join us"),

       ),
       ],
     )
     )
   ),
   ); 
  }
  Future<void> createuser() async {
    firebaseAuth.createUserWithEmailAndPassword(
        email: userEmail.text, password: userPassword.text);
  }
}



