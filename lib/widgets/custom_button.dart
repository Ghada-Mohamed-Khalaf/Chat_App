import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 CustomButton({super.key,required this.text,this.onTap});
 Function()? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child:  Center(child: Text(text)),
        width: double.infinity,
        height: 65,
      ),
    );


  }
}
