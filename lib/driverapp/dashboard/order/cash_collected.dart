import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/dashboard/order/delivery_complete.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text_field.dart';

import '../../utilis/constant_colors.dart';
import '../../widgets/custom_button.dart';

class CashCollected extends StatelessWidget {
  const CashCollected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            height: 306,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextTwo(text: "Enter the amount you collected from\ncustomer"),
                const SizedBox(height: 20),
                CustomTextFieldTypeOne(
                  obscureText: false,
                  hintText: "Amount Collected From Customer",
                ),
                CustomTextFieldTypeOne(
                  obscureText: false,
                  hintText: " Confirm Amount Collected From Customer",
                ),
                const SizedBox(height: 20),
                Center(
                  child: CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DelivaryComplete(),
                          ));
                    },
                    buttonText: "CONFIRM ITEMS",
                    buttonWidth: 300,
                    borderRadius: 12,
                    buttonHeight: 50,
                    buttonColor: kblack,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
