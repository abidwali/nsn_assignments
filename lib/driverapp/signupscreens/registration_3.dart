// ignore_for_file: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nsn_assignments/driverapp/signupscreens/registration_4.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text_field.dart';
import '../dashboard/index.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_steps_button.dart';
import '../widgets/custom_text.dart';
import 'upload_noc.dart';
import 'widgets/listtile_upload_documents.dart';

class RegistrationThree extends StatefulWidget {
  const RegistrationThree({super.key});

  @override
  State<RegistrationThree> createState() => _RegistrationThreeState();
}

class _RegistrationThreeState extends State<RegistrationThree> {
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextOne(text: "Step 2"),
              TextTwo(
                text:
                    "Please follow the interaction take a \npicture of your documents",
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Vehicle Number",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              CustomTextFieldTypeOne(
                obscureText: false,
                hintText: "Enter Vehicle Number",
              ),
              ListTileUploadDoc(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                  );
                },
                text: 'Click to upload R.C',
              ),
              ListTileUploadDoc(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                  );
                },
                text: 'Click to upload Insurance',
              ),
              ListTileUploadDoc(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                  );
                },
                text: 'Click to upload PUC',
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "You Own The Vehicle",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  FlutterSwitch(
                    value: isSwitched,
                    showOnOff: true,
                    height: 28,

                    //inactiveColor: const Color(0xffEAEAEA),
                    activeColor: Colors.green,
                    activeText: "YES",
                    inactiveText: "NO",
                    inactiveTextColor: Colors.black,
                    onToggle: (value) {
                      debugPrint("VALUE : $value");
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              isSwitched == true
                  ? ListTileUploadDoc(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UploadNOC(),
                          ),
                        );
                      },
                      text: 'Click to upload NOC',
                    )
                  : const SizedBox(height: 50),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrationFour(),
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
