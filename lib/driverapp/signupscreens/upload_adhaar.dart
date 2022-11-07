import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text_field.dart';
import 'widgets/upload_document.dart';

class UploadAdhaar extends StatelessWidget {
  const UploadAdhaar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 80),
                TextTwo(text: "Upload addhar card"),
                const SizedBox(height: 5),
                TextOne(
                    text:
                        "We need to see your name clearly printed on an\noffical document"),
                const SizedBox(height: 50),
                CustomTextFieldTypeOne(
                  obscureText: false,
                  hintText: "Enter Your Adhaar Number",
                ),
                Column(
                  children: [
                    UploadDocument(
                      onTap: () {},
                      title: 'Upload Front',
                    ),
                    const SizedBox(height: 5),
                    UploadDocument(
                      onTap: () {},
                      title: 'Upload Back',
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
}
