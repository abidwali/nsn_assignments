// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';
import 'bank_details.dart';
import 'documents.dart';
import 'personal_information.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
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
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            color: const Color(0xffE4E4E9),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    maxRadius: 35,
                    backgroundImage:
                        AssetImage("assets/images/profileavatar1.png"),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      TextTwo(text: "Yash Yadav"),
                      TextTwo(text: "ID:02505")
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 350,
            //color: Colors.red,
            child: Column(
              children: [
                // Positioned(
                //   top: -35,
                //   left: 20,
                //   right: 20,
                //   child: Container(
                //     height: 70,
                //     width: double.infinity,
                //     color: Colors.black,
                //     child: Text("Card"),
                //   ),
                // ),
                const SizedBox(height: 50),
                ProfileNavigation(
                  text: "Personal Information",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonalInformation(),
                      ),
                    );
                  },
                ),

                ProfileNavigation(
                  text: "Bank Details",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BankDetails(),
                      ),
                    );
                  },
                ),

                ProfileNavigation(
                  text: "Documents",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Documents(),
                      ),
                    );
                  },
                ),

                ProfileNavigation(
                  text: "ID",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonalInformation(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileNavigation extends StatelessWidget {
  String text;
  VoidCallback onTap;

  ProfileNavigation({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: const Icon(Icons.autorenew_outlined),
        title: Text(
          text,
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 20.0,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
