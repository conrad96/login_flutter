import "package:flutter/material.dart";

void main(){
  runApp(Scratch());
}

class Scratch extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return ScratchState();
    }
}
class ScratchState extends State<Scratch>{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login System"),
        ),
        body: Text("Test"),
      ),
    );
  }
  Widget loginLayout(){
    return Form(
      child: Column(
        children: <Widget>[
            email(),
            password(),
            submitButton()
        ]
      ),
    );
  }
  email(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "john.doe@example.com",
        labelText: "Email",
      ),
      validator: (String arg){
        if(!arg.contains('@'))
        {
          return "Email Invalid. please try again";
        }
      },
    );
  }
  password(){
    return TextFormField(
      decoration:  InputDecoration(
        labelText: "Password"
      ),
      validator: (String arg){
        if(arg.length < 5)
        {
          return "password must me more than 5 characters";
        }
      },
    );
  }
  submitButton(){
    return RaisedButton(
      splashColor: Colors.teal,
      elevation: 5.0,
      child: Text("Login"),
      onPressed: (){},
    );
  }
}
