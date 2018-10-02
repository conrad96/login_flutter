import "package:flutter/material.dart";
import "package:login_flutter/src/login_layout.dart";

void main() => runApp(Style());
class Style extends StatelessWidget{
  Widget build(context)
  {
    return MaterialApp(
      title: "Fancy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Nunito',
      ),
      home: LoginLayout(),
    );
  }
}