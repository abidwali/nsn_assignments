import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_next_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import '../widgets/otp_box_widget.dart';
import 'verify_pin_fingerprint.dart';

class SetupLoginPin extends StatelessWidget {
  const SetupLoginPin({super.key});

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
              TextOne(text: "Create new pin"),
              const SizedBox(height: 5),
              TextTwo(
                  text:
                      "To regularly login please set 4-digit \npin or use figner-print"),
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
                      builder: (context) => const VerifyPinFingerPrint(),
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
