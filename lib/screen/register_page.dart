import 'package:chat_app/constant.dart';
import 'package:chat_app/screen/login_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  String? email;
  String? password;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor ,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.start,
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
              onChanged: (data){
                email=data;

              },

              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              onChanged: (data){
               password=data;


              },

              hintText: 'password',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: ()async{
                
              try {
    await registerUser();

    } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
    showSnackBar(context,"weak password");}


    else if (e.code == 'email-already-in-use') {
    showSnackBar(context,'email-already-in-use');
    }
    }


    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("success") ));

             

              },

              text: "Register",),
            SizedBox(
              height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("ready have an account?",style: TextStyle(color: Colors.white),),
                TextButton(
             onPressed: () {
           Navigator.pop(context);



                  },
                  child: Text(' Log in',style: TextStyle(color:kPrimaryColor ,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String  message) {
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message), ));
  }

  Future<void> registerUser() async {
     var auth= FirebaseAuth.instance;
    UserCredential user= await auth.createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
