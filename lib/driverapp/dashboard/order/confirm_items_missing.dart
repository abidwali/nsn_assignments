// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';
import 'reach_location.dart';

class ConfirmItemsMissing extends StatelessWidget {
  const ConfirmItemsMissing({super.key});

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
          Center(
            child: Container(
              height: 199,
              width: width * 1,
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      height: 5,
                      thickness: 3,
                      indent: width * .40,
                      endIndent: width * .40,
                    ),
                    const SizedBox(height: 20),
                    TextTwo(text: "Conform All the iteams are avilable"),
                    const SizedBox(height: 10),
                    TextOne(
                        text:
                            "Check if any iteams are missing. A penalty might be apply if \nyou miss any iteams."),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const ConfirmPickup(),
                            //     ));
                          },
                          buttonText: "Items Missing",
                          textColor: kblack,
                          buttonWidth: 150,
                          buttonHeight: 50,
                          borderRadius: 25,
                          borderWidth: 1,
                          buttonColor: kwhite,
                        ),
                        const SizedBox(width: 10),
                        CustomButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReachLocation(),
                                ));
                          },
                          buttonText: "Confirm Items ",
                          buttonWidth: 150,
                          buttonHeight: 50,
                          borderRadius: 25,
                          borderWidth: 1,
                          buttonColor: kblack,
                        ),
                      ],
                    ),
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
