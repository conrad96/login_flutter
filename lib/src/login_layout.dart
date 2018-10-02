import 'package:flutter/material.dart';

class LoginLayout extends StatefulWidget{
_LoginLayoutState createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout>{
  Widget build(context){
    //custom logo
    final logo = Hero(
      tag: 'Hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Image.asset('assets/logo.jpg'),
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        labelText: "Email Address",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        )
      ),
    );
    final password = TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        )
      ),
    );
    final loginBtn = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){

          },
          color: Colors.lightBlueAccent,
          child: Text("Login", style: TextStyle(color: Colors.white)),    
        ),

      )
    );
    final forgotLabel = FlatButton(
      child: Text("Forgot password ?",
        style: TextStyle(color: Colors.black45) 
      ),
      onPressed: (){},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:15.0,right:15.0),
          children: <Widget>[
            logo,
            SizedBox(height: 25.0),
            email,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 5.0),
            forgotLabel,
            SizedBox(height: 8.0),
            loginBtn
          ]
        )
      )
    );
  }
}