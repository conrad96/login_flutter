import 'package:flutter/material.dart';

class ValidationMixin{
  String validateEmail(String value){
    if(!value.contains('@')){
      return "Please enter valid Email";
    }
    return null;
  }
  String validatePassword(String value){
    if(value.length < 4 )
    {
      return "Password Should be more than 4 characters";
    } 
    return null;
  }
}