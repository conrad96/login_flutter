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
  final myKey = GlobalKey<FormState>();
   String EmailStr="";
   String PasswordStr ="";
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login System"),
        ),
        body: loginLayout(),
      ),
    );
  }
  Widget loginLayout(){

    return Form(
      key: myKey,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            email(),
            password(), 
            Container(margin: EdgeInsets.only(top: 10.0)),           
            submitButton()
            ]
        )
      )
    );
  }
   email(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
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
      onSaved: (String arg){
        EmailStr = arg;
      },
    );
  }
  password(){
    return TextFormField(
      decoration:  InputDecoration(
        labelText: "Password",
      ),
      obscureText: true,
      validator: (String arg){
        if(arg.length < 5)
        {
          return "password must me more than 5 characters";
        }
      },
      onSaved: (String arg){
        PasswordStr = arg;
      },
    );
  }
  submitButton(){
    return RaisedButton(
      splashColor: Colors.teal,
      elevation: 5.0,
      child: Text("Login"),
      onPressed: (){
        if(myKey.currentState.validate())
        {
          myKey.currentState.save();
          print("EMail: $EmailStr \n Password: $PasswordStr ");
        }
      },
    );
  }
}
