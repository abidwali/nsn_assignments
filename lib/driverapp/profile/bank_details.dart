// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bank Details",
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
          BankDetailsInfo(
              headerText: "Account Holders Name", footerText: "Yash Yadav"),
          BankDetailsInfo(
              headerText: "Account Number", footerText: "01234567891234"),
          BankDetailsInfo(headerText: "Bank Name", footerText: "ICICI Bank"),
          BankDetailsInfo(headerText: "Account Type", footerText: "Saving"),
          BankDetailsInfo(headerText: "IFSC", footerText: "ICICIBA01"),
        ],
      ),
    );
  }
}

class BankDetailsInfo extends StatelessWidget {
  String headerText;
  String footerText;
  BankDetailsInfo(
      {super.key, required this.headerText, required this.footerText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Container(
        height: 50,
        width: double.infinity,
        child: Column(
          children: [
            TextOne(text: headerText),
            const SizedBox(height: 8),
            TextTwo(text: footerText),
          ],
        ),
      ),
    );
  }
}
