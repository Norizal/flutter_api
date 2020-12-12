

import 'package:auth_app/restapi/controller_api.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/pages/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  ControllerAPI controllerAPI = new ControllerAPI();
  String msgStatus = "";

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  onPress() {
    setState(() {});
  }

  showMessage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('Failed'),
            content: new Text('Check your email or password'),
            actions: <Widget>[
              new RaisedButton(
                child: new Text(
                  'Close',
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Register'),
          leading: new IconButton(
          icon: new Icon(Icons.ac_unit),
          onPressed: () => Navigator.of(context).pop(),
        ),
        ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.only(top: 62,left: 12.0,right: 12.0,bottom: 12.0),
            children: <Widget>[
              Container(
                height: 50,
                child: new TextField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    icon: new Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: new TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    icon: new Icon(Icons.email),
                  ),
                ),
              ),

              Container(
                height: 50,
                child: new TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    icon: new Icon(Icons.vpn_key),
                  ),
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 44.0),),

              Container(
                height: 50,
                child: new RaisedButton(
                  onPressed: onPress,
                  color: Colors.blue,
                  child: new Text(
                    'Register',
                    style: new TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.blue),),
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 44.0),),

              Container(
                height: 50,
                child: new Text(
                  '$msgStatus',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 44.0),),
              Container(
                height: 50,
                child: new FlatButton(
                  onPressed: ()=>Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Login(),
                      )
                  )

                  ,
                  color: Colors.blue,
                  child: new Text(
                    'Login',
                    style: new TextStyle(
                      color: Colors.white,
                    ),),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}