// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  VoidCallback onPressed;
  NextButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),
          const Text("Next"),
    ],);
  }
}
