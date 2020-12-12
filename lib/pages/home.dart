
import 'package:auth_app/restapi/controller_api.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/pages/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ControllerAPI controllerAPI = new ControllerAPI();


  savePreferences(String token) async {
   
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
        appBar: AppBar(
          title:  Text('Home'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.cancel),
              onPressed: (){
                savePreferences('0');
                Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Login(),
                    )
                );
              },
            )
          ],
        ),
  
        body: Center(
        child: 
        Text("Test"),)
      ),
      
    );
  }
}