// ignore_for_file: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text_field.dart';
import '../dashboard/index.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_steps_button.dart';
import '../widgets/custom_text.dart';
import 'upload_noc.dart';
import 'widgets/listtile_upload_documents.dart';

class RegistrationFour extends StatefulWidget {
  const RegistrationFour({super.key});

  @override
  State<RegistrationFour> createState() => _RegistrationFourState();
}

class _RegistrationFourState extends State<RegistrationFour> {
  bool isSwitched = false;
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
        title: Row(
          children: [
            StepsIcon(centerWidget: Text("1")),
            Container(
              width: 45,
              height: 3,
              color: Colors.black,
            ),
            StepsIcon(centerWidget: Text("2")),
            Container(
              width: 45,
              height: 3,
              color: Colors.black,
            ),
            StepsIcon(centerWidget: Text("3")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextOne(text: "Step 2"),
              TextTwo(
                text:
                    "Please follow the interaction and  \nenter your bank details",
              ),
              const SizedBox(height: 40),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "Enter Account Holder’s Name",
              ),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "Account Number",
              ),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "Bank Name",
              ),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "IFSC",
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RequestDashboard(),
                    ),
                  );
                },
                buttonText: "Save And Continue",
                buttonColor: Colors.grey,
                borderColor: Colors.transparent,
              ),
            ],
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
