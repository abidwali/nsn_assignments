// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import 'confirm_items.dart';

class ConfirmPickup extends StatelessWidget {
  const ConfirmPickup({super.key});

  @override
  Widget build(BuildContext context) {
    double? height, width;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 1,
            width: width * 1,
            child: Image.asset(
              "assets/images/backgroundmap.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * .5,
              width: width * 1,
              decoration: const BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Divider(
                      height: 5,
                      thickness: 3,
                      indent: width * .40,
                      endIndent: width * .40,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextOne(text: "2.3 Km"),
                        const Icon(Icons.assistant_direction)
                      ],
                    ),
                    const SizedBox(height: 10),
                    TextOne(text: "Pickup Store 1"),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        TextOne(text: "Drop"),
                        const SizedBox(width: 60),
                        TextThree(
                          text:
                              "Near metro medical, bhagat singh\nnagar no.1 link road, goregaon w,\nmumbai 400104",
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        TextOne(text: "Order Details"),
                        const SizedBox(width: 10),
                        TextThree(text: "Pakage no. #0123456789")
                      ],
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConfirmItems(),
                            ));
                        
                      },
                      buttonText: "Confirm PickUp",
                      buttonWidth: 200,
                      buttonColor: kblack,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
