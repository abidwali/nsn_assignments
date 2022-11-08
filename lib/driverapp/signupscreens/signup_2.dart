import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/signupscreens/registration_1.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_next_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import '../widgets/otp_box_widget.dart';

class SignupScreenTwo extends StatelessWidget {
  const SignupScreenTwo({super.key});

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
              Row(
                children: [
                  TextOne(text: "verification"),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  TextTwo(text: "We sent you an OTP"),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  TextOne(text: "On number: +91 9004457241"),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OtpBox(first: true, last: false),
                  const SizedBox(width: 10),
                  OtpBox(first: false, last: false),
                  const SizedBox(width: 10),
                  OtpBox(first: false, last: false),
                  const SizedBox(width: 10),
                  OtpBox(first: false, last: true),
                ],
              ),
              const SizedBox(height: 50),
              NextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationOne(),
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
