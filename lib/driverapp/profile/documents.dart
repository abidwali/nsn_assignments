// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

class Documents extends StatelessWidget {
  const Documents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Documents",
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
          DocumentWidgetScreen(
            documentName: "Adhar Card",
            documentNumber: "0000 0000 0000",
          ),
          DocumentWidgetScreen(
            documentName: "PAN Card",
            documentNumber: "0000 0000 0000",
          ),
          DocumentWidgetScreen(
            documentName: "Driving Lisence",
            documentNumber: "0000 0000 0000",
          ),
        ],
      ),
    );
  }
}

class DocumentWidgetScreen extends StatelessWidget {
  String documentName;
  String documentNumber;

  DocumentWidgetScreen(
      {super.key, required this.documentName, required this.documentNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffEAE9EE),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextTwo(text: documentName),
              const SizedBox(height: 5),
              TextTwo(text: documentNumber),
              const SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    color: const Color(0xffD9D9D9),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 120,
                    color: const Color(0xffD9D9D9),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
