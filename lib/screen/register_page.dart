import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/scholar.png',
            ),
            const Text(
              "Scholar Chat",
              style: TextStyle(
                  color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
            ),
            const Text(
              "Sign In",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'password',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(),
            SizedBox(
              height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("don't have an account?",style: TextStyle(color: Colors.white),),
                Text('  Register',style: TextStyle(color:Color(0xffc7EDE6),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
