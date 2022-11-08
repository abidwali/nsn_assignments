import 'package:flutter/material.dart';

import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import '../utilis/constant_colors.dart';
import '../widgets/custom_button.dart';
import 'widgets/upload_document.dart';

class UploadNOC extends StatelessWidget {
  const UploadNOC({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double? height, width;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                TextTwo(text: "Upload NOC"),
                const SizedBox(height: 5),
                TextOne(
                    text:
                        "We need to see your name clearly printed on an\noffical document"),
                const SizedBox(height: 50),
                Column(
                  children: [
                    UploadDocument(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: ((builder) => bottomSheet()),
                        );
                      },
                      title: 'Upload NOC',
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          onTap: () {},
                          buttonText: "View",
                          buttonWidth: width * .35,
                          buttonColor: kblack,
                        ),
                        const SizedBox(width: 15),
                        CustomButton(
                          onTap: () {},
                          buttonText: "Edit",
                          buttonWidth: width * .35,
                          buttonColor: kwhite,
                          textColor: kblack,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          const Text("Choose profile photo"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {
                  // takePhoto(ImageSource.camera);
                },
                icon: const Icon(Icons.camera),
                label: const Text("Camera"),
              ),
              const SizedBox(width: 30),
              TextButton.icon(
                onPressed: () {
                  // takePhoto(ImageSource.gallery);
                },
                icon: const Icon(Icons.image),
                label: const Text("Gallery"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
