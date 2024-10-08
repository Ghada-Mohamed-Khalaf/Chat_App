import 'package:chat_app/constant.dart';
import 'package:chat_app/screen/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: kPrimaryColor ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child:Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
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
              height: 10,
            ),

            const SizedBox(
              height: 20,
            ),
           CustomButton(text:"Login" ,),

        const SizedBox(
          height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("don't have an account?",style: TextStyle(color: Colors.white),),
    TextButton(
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage();
                      }, 
                        ),
                        );
                      },
                  child: const Text('  Register',style: TextStyle(color:kPrimaryColor ,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
