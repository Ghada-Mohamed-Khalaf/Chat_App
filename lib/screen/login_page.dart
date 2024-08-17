import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/scholar.png',
          ),
          Text("Scholar Chat",style: TextStyle(color: Colors.white,fontSize: 32,fontFamily:'Pacifico' ),),
          Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 14),),
      TextField(decoration: InputDecoration(
        hintText: "Email",hintStyle: TextStyle(color: Colors.white),

        border: OutlineInputBorder(


          ),),
      ),
          SizedBox(height: 10,),
          TextField(decoration: InputDecoration(

            hintText: "password",hintStyle: TextStyle(color: Colors.white),


            border: OutlineInputBorder(


            ),),
          ),
        ],
      ) ,

    );
  }
}
