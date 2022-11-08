import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

class AwaitVerificationDocuments extends StatelessWidget {
  const AwaitVerificationDocuments({super.key});

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
              height: 306,
              width: 257,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextTwo(text: "Unlock Driver App"),
                  const SizedBox(height: 300),
                  TextThree(
                      text: "Your Documents Have been submitted successfully"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
