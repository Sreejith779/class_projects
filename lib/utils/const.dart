import 'package:flutter/material.dart';

sucessSnackBar(context){
  return  ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.deepPurpleAccent,
          content: Text("Login Sucessfully")));
}
errorSnackBar(context){
  return  ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.redAccent,
          content: Text("Something went wrong")));
}