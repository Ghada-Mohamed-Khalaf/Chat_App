import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 CustomButton({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child:  Center(child: Text(text)),
      width: double.infinity,
      height: 65,
    );


  }
}
