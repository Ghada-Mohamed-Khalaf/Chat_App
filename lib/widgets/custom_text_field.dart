import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.hintText,this.onChanged});
   Function(String)?onChanged;
String? hintText;



  @override
  Widget build(BuildContext context) {
    return    TextField(
      onChanged:onChanged,
      decoration: InputDecoration(
      hintText:hintText,hintStyle: TextStyle(color: Colors.white),

      border: OutlineInputBorder(


      ),),
    );
  }
}
