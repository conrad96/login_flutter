import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  final formKey = GlobalKey<FormState>();

  Widget build(context){
    return Container(
      margin: EdgeInsets.only(
        top: 75.0,
        left:15.0,
        right:15.0
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top:20.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField(){
    return TextField(
       keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Addres",
        hintText: "john.doe@example.com",

      ),
    );
  }
  Widget username(){
    return TextField(
      decoration: InputDecoration(
        labelText: "Username",
      ),
    );
  }
  Widget passwordField(){
    return Container(
        child: TextField(
        obscureText: true,
        decoration: InputDecoration(
        labelText: "Password",
          ),
      ),
    );
  }
  Widget submitButton(){
    return RaisedButton(
      color:  Colors.lightBlue,
      onPressed: (){
        formKey.currentState.reset();
      },
      child: Text("Submit"),
    );
  }
}
