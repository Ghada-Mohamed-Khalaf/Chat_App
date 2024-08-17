import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.hintText});
String? hintText;


  @override
  Widget build(BuildContext context) {
    return    TextField(decoration: InputDecoration(
      hintText: "Email",hintStyle: TextStyle(color: Colors.white),

      border: OutlineInputBorder(


      ),),
    );
  }
}
