import "package:flutter/material.dart";
import "../mixins/validation_mixin.dart";

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();
  String email="";
  String password="";
  Widget build(context){
    return Container(
      margin: EdgeInsets.only(
        left:20.0,
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
        labelText: "Email Address",
        hintText: "john.doe@example.com",

      ),
      validator: validateEmail,
      onSaved: (String value){
        email= value;
      },
    );
  
  }

  Widget passwordField(){
    return Container(
        child: TextField(
        obscureText: true,
        decoration: InputDecoration(
        labelText: "Password",
          ),
          validator: validatePassword,
      onSaved: (String val){
        password=val;
      }          
      ),

    );
  }
  Widget submitButton(){
    return RaisedButton(
      color:  Colors.blueGrey,
      child: Text("Login"),
      onPressed: (){
      if(formKey.currentState.validate())
      {
        formKey.currentState.save();
        print("Email: $email \n Password: $password");
      }
      }
    );
  }
}
