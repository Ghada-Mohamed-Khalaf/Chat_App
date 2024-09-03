import 'package:chat_app/constant.dart';
import 'package:chat_app/screen/login_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;

  bool isLoading= false;

GlobalKey<FormState>formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall:isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor ,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16 ),
          child: Form(
            key:formKey,
            child: ListView(

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
                      if(formKey.currentState!.validate() ) {
                        isLoading= true;
                        try {
                          await registerUser();
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            showSnackBar(context, "weak password");
                          }


                          else if (e.code == 'email-already-in-use') {
                            showSnackBar(context, 'email-already-in-use');
                          }
                        }
                        catch (e) {
                          showSnackBar(context, "there was an error");
                        }
                        isLoading= false;


                        showSnackBar(context, "success");
                      }
                      else{

                      }

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
