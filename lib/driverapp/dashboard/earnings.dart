import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/dashboard/widgets/earning_screen_components.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

import 'history.dart';

class EarningScreen extends StatelessWidget {
  const EarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const ThisWeek(),
                Container(
                  height: 130,
                  width: 332,
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kgrey,
                  ),
                ),
                const ThisWeek(),
              ],
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const DaysRow();
              },
            ),
          ),
          ListTile(
            title: TextTwo(
              text: "Today's Summary",
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
            elevation: 1,
            color: kgrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: 3,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              //scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text(
                    "Task 1",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "04/10/2022",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "+₹ 40",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
          //const HistoryScreen(),
        ],
      ),
    );
  }
}
