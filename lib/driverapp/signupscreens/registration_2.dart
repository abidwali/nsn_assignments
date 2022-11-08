// ignore_for_file: unused_import, unused_field

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nsn_assignments/driverapp/signupscreens/upload_adhaar.dart';
import 'package:nsn_assignments/driverapp/signupscreens/widgets/listtile_upload_documents.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_steps_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text_field.dart';

import 'registration_3.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';

class RegistrationTwo extends StatefulWidget {
  const RegistrationTwo({super.key});

  @override
  State<RegistrationTwo> createState() => _RegistrationTwoState();
}

class _RegistrationTwoState extends State<RegistrationTwo> {
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
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
        centerTitle: true,
        title: Row(
          children: [
            StepsIcon(centerWidget: const Text("1")),
            Container(
              width: 45,
              height: 3,
              color: Colors.black,
            ),
            StepsIcon(centerWidget: const Text("2")),
            Container(
              width: 45,
              height: 3,
              color: Colors.black,
            ),
            StepsIcon(centerWidget: const Text("3")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              TextOne(text: "Step 1"),
              TextTwo(
                text:
                    "Please follow the interaction take a \npicture of your documents",
              ),
              imageProfile(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: Color(0xff4A2A51),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "Enter Your Name",
              ),
              ListTileUploadDoc(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UploadAdhaar(),
                    ),
                  );
                },
                text: 'Click to upload Adhaar Card',
              ),
              ListTileUploadDoc(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                  );
                },
                text: 'Click to upload PAN Card',
              ),
              ListTileUploadDoc(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                  );
                },
                text: 'Click to upload Driving Lisence',
              ),
              const SizedBox(height: 50),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationThree(),
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

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: _imageFile == null
                ? const AssetImage("assets/images/profileavatar1.png")
                    as ImageProvider
                : FileImage(File(_imageFile!.path)),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: const Icon(Icons.add_a_photo_outlined),
            ),
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
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
                  takePhoto(ImageSource.camera);
                },
                icon: const Icon(Icons.camera),
                label: const Text("Camera"),
              ),
              const SizedBox(width: 30),
              TextButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
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
