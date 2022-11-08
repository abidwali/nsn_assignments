// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import '../index.dart';
import 'cash_collected.dart';

class DelivaryComplete extends StatelessWidget {
  const DelivaryComplete({super.key});

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
              height: 457,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      height: 5,
                      thickness: 3,
                      indent: width * .40,
                      endIndent: width * .40,
                    ),
                    const SizedBox(height: 20),
                    TextTwo(text: "₹500"),
                    TextOne(text: "Cash to be collected from customer"),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextOne(text: "2.3 Km    30 Minutes"),
                        Row(
                          children: [
                            TextTwo(
                              text: "Navigate",
                            ),
                            const Icon(Icons.assistant_direction),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CashCollected(),
                              ));
                        },
                        buttonText: "CASH COLLECTED",
                        buttonWidth: 241,
                        buttonHeight: 50,
                        borderRadius: 12,
                        buttonColor: kblack,
                      ),
                    ),
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
                    const SizedBox(height: 20),
                    const ListTile(
                      leading: Icon(Icons.call),
                      title: Text("Call"),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RequestDashboard(),
                              ));
                        },
                        buttonText: "DELIVARY COMPLETE",
                        buttonWidth: 300,
                        borderRadius: 12,
                        buttonHeight: 50,
                        buttonColor: kdarkGrey,
                        borderColor: Colors.transparent,
                      ),
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
