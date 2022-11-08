import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            //color: kgrey,
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
            elevation: 1,
            color: kgrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListView.builder(
              itemCount: 5,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              //scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text(
                    "Task",
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
        ],
      ),
    );
  }
}
