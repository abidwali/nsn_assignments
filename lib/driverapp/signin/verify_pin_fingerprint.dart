import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import '../widgets/otp_box_widget.dart';

class VerifyPinFingerPrint extends StatelessWidget {
  const VerifyPinFingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            child: Container(
              height: 421,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextTwo(text: "Unlock Driver App"),
                  const SizedBox(height: 50),
                  const Icon(Icons.fingerprint, size: 70),
                  const SizedBox(height: 5),
                  TextThree(text: "Touch the fingerprint sensor"),
                  const SizedBox(height: 35),
                  TextThree(text: "Or Use PIN"),
                  const SizedBox(height: 10),
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
                  const SizedBox(height: 10),
                  TextThree(text: "Forgot PIN"),
                  const SizedBox(height: 40),
                  TextThree(text: "Use Pattern"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
