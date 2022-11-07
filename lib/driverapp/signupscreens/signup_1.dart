import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nsn_assignments/driverapp/signupscreens/signup_2.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_next_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text_field.dart';

import '../widgets/custom_text.dart';

class SignupScreenOne extends StatelessWidget {
  const SignupScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white12,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextOne(text: "Welcome"),
              TextTwo(
                text:
                    "To join please start your registration \nwith your phone no.",
              ),
              const SizedBox(height: 100),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "+91",
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
              ),
              const SizedBox(height: 50),
              NextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreenTwo(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
