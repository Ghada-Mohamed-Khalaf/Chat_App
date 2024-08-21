import 'dart:js';

import 'package:chat_app/screen/login_page.dart';
import 'package:chat_app/screen/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const  ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,


     initialRoute:  "LoginPage()",
      routes: {
        "LoginPage":(context) => const LoginPage(),
        RegisterPage.id:(context) =>  RegisterPage(),
      },
    );

  }
}
