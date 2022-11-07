import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_button.dart';

import '../signupscreens/signup_1.dart';
import 'signin_enter_number.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    double? height, width;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        // height: height * 1,
        // width: width * 1,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              height: height * .6,
              width: width * .8,
              decoration: const BoxDecoration(
                color: kblack,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInOne()));
                  },
                  buttonText: "Sign In",
                  buttonWidth: width * .35,
                  buttonColor: kblack,
                ),
                const SizedBox(width: 25),
                CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreenOne()));
                  },
                  buttonText: "Join",
                  buttonWidth: width * .35,
                  buttonColor: kwhite,
                  textColor: kblack,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
