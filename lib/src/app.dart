import "package:flutter/material.dart";

class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
  home: Scaffold(
    
    appBar: AppBar(
    title: Text("Login Application")
        ),
        body: Text("Login Form"),
      )
    );
  }
}