import 'package:flutter/material.dart';
import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';
import 'package:nsn_assignments/driverapp/widgets/custom_text.dart';

class ThisWeek extends StatelessWidget {
  const ThisWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: kdarkGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadowColor: kdarkGrey,
      child: Container(
        height: 120,
        width: 320,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15),
              TextThree(text: "Last Week"),
              const SizedBox(height: 55),
              Row(
                children: [
                  Column(
                    children: [
                      TextThree(text: "₹00"),
                      TextThree(text: "Total Earning"),
                    ],
                  ),
                  const SizedBox(width: 6),
                  Column(
                    children: [
                      TextThree(text: "₹00"),
                      TextThree(text: "Order Earning"),
                    ],
                  ),
                  const SizedBox(width: 6),
                  Column(
                    children: [
                      TextThree(text: "₹00"),
                      TextThree(text: "Incentive"),
                    ],
                  ),
                  const SizedBox(width: 6),
                  Column(
                    children: [
                      TextThree(text: "₹00"),
                      TextThree(text: "Tips"),
                    ],
                  ),
                  const SizedBox(width: 6),
                  Column(
                    children: [
                      TextThree(text: "₹00"),
                      TextThree(text: "Bonuses"),
                    ],
                  ),
                  const SizedBox(width: 6),
                  Column(
                    children: [
                      TextThree(text: "₹00"),
                      TextThree(text: "Fine"),
                    ],
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

class DaysRow extends StatelessWidget {
  const DaysRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink,
        ),
      ),
    );
  }
}
