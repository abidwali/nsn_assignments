// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:nsn_assignments/practice/quizapp/index.dart';
import 'driverapp/signin/getstart.dart';
import 'driverapp/signupscreens/signup_1.dart';
import 'driverapp/widgets/register_with_phone.dart';
import 'e_com_app/fruits_and_vegitables.dart';
import 'todoapp/todo_homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NSN Assignments',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SignupScreenOne(),
      //home: const RegisterWithPhoneNumber(),
      home: const FruitsAndVegitables(),
    );
  }
}
