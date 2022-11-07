import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/custom_text_field.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Information",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
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
        backgroundColor: const Color(0xffE4E4E9),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              imageProfile(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: Color(0xff676767),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Contact",
                    style: TextStyle(
                      color: Color(0xff676767),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "Enter Your Contact",
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
