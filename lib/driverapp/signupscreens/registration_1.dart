// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/signupscreens/registration_2.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_button.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_steps_button.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../utilis/constant_colors.dart';
import '../widgets/custom_text.dart';

class RegistrationOne extends StatelessWidget {
  RegistrationOne({super.key});
  double? height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 12,
                child: Container(
                  height: 10,
                  alignment: Alignment.center,
                  //color: Colors.purple,
                  child: Column(),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  //color: Colors.purple,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextOne(text: "Documentation"),
                      TextTwo(
                        text:
                            "To submmit the document please \nput the documents in one place its \ngoing to be 3 step.",
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 3,
                md: 3,
                child: Container(
                  height: 400,
                  alignment: Alignment.center,
                  //color: Colors.green,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      StepsIcon(
                          centerWidget:
                              const Text("1", style: TextStyle(color: kwhite))),
                      Container(
                        height: 80,
                        width: 3,
                        color: Colors.black,
                      ),
                      StepsIcon(
                          centerWidget:
                              const Text("2", style: TextStyle(color: kwhite))),
                      Container(
                        height: 80,
                        width: 3,
                        color: Colors.black,
                      ),
                      StepsIcon(
                          centerWidget:
                              const Text("3", style: TextStyle(color: kwhite))),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 9,
                md: 3,
                child: Container(
                    height: 400,
                    alignment: Alignment.center,
                    //color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          TextTwo(text: "Basic Documents"),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                TextOne(text: "Photo"),
                                const SizedBox(height: 5),
                                TextOne(text: "Adhaar Card"),
                                const SizedBox(height: 5),
                                TextOne(text: "Pan Card"),
                                const SizedBox(height: 5),
                                TextOne(text: "Driving Lisence"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextTwo(text: "Add Vehicle"),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                TextOne(text: "Vehicle Number"),
                                const SizedBox(height: 5),
                                TextOne(text: "RC"),
                                const SizedBox(height: 5),
                                TextOne(text: "Insurance"),
                                const SizedBox(height: 5),
                                TextOne(text: "PUC"),
                                const SizedBox(height: 5),
                                TextOne(
                                    text: "NOC (If vehicle is someone else)"),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextTwo(text: "Add Bank Details"),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                TextOne(text: "Passbook photo"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              ResponsiveGridCol(
                lg: 12,
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  //color: Colors.purple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegistrationTwo(),
                            ),
                          );
                        },
                        buttonText: "Continue",
                        buttonColor: Colors.black,
                        buttonWidth: 300,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // Column(
        //   children: [
        //     const SizedBox(height: 50),
        //     TextOne(text: "Documentation"),
        //     TextTwo(
        //       text:
        //           "To submmit the document please \nput the documents in one place its \ngoing to be 3 step.",
        //     ),

        //     ElevatedButton(onPressed: () {}, child: const Text("Continue")),
        //     //CustomButton(onTap: () {}, buttonText: "")
        //   ],
        // ),
      ),
    );
  }
}
