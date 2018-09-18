import "package:flutter/material.dart";

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
           // submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField(){
    return TextField(
       keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
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
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
      ),
    );
  }
  Widget submitButton(){

  }
}
