// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import '../../signupscreens/widgets/upload_document.dart';
import 'confirm_items_missing.dart';

class ConfirmItems extends StatelessWidget {
  const ConfirmItems({super.key});

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
              height: 451,
              width: width * 1,
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Divider(
                      height: 5,
                      thickness: 3,
                      indent: width * .40,
                      endIndent: width * .40,
                    ),
                    const SizedBox(height: 20),
                    TextOne(text: "Pickup 3 Items"),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        TextOne(text: "Order Details"),
                        const SizedBox(width: 10),
                        TextThree(text: "Pakage no. #0123456789")
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UploadDocument(
                          height: 165,
                          width: 138,
                          onTap: () {
                            // showModalBottomSheet(
                            //   context: context,
                            //   builder: ((builder) => bottomSheet()),
                            // );
                          },
                          icon: const Icon(
                            Icons.camera_enhance_outlined,
                          ),
                          title: 'Take image ',
                        ),
                        const SizedBox(width: 20),
                        UploadDocument(
                          height: 165,
                          width: 138,
                          onTap: () {
                            // showModalBottomSheet(
                            //   context: context,
                            //   builder: ((builder) => bottomSheet()),
                            // );
                          },
                          icon: const Icon(
                            Icons.camera_enhance_outlined,
                          ),
                          title: 'Take image ',
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConfirmItemsMissing(),
                            ));
                      },
                      buttonText: "Confirm Items",
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
