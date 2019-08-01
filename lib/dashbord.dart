import'package:flutter/material.dart';
class Dashboard extends StatefulWidget{
    @override
    DashboardState createState()=> DashboardState();
}
class DashboardState extends State<Dashboard>{
    @override
    Widget build (BuildContext context){
        return Scaffold (
            appBar:AppBar(
                backgroundColor: Colors.greenAccent,
                title: Text ("Dashboard"),
            ),
            drawer: Drawer(
                child: ListView(
                    children: <Widget>[
                        UserAccountsDrawerHeader(
                            accountName: Text("Sameer wahid"),
                            accountEmail: Text("sameerwahid1998@gmail.com"),
                            currentAccountPicture: CircleAvatar(
                                backgroundColor: Colors.amber,
                                child: Text("S"),
                            ),
                        ),
                        ListTile(title: Text("home"),
                        trailing: Icon(Icons.dashboard),
                        ),
                        ListTile(title:Text("followers"),
                        trailing: Icon(Icons.add_box),
                        )
                    ],
                ),
            ),
        );
    }
}