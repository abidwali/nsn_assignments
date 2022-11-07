// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class StepsIcon extends StatelessWidget {
  Widget centerWidget;
 StepsIcon({
    Key? key,
    required this.centerWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
        //border: Border.all(color: Colors.grey, width: 2),
      ),
      child: Center(
        child: centerWidget,
      ),
    );
  }
}
