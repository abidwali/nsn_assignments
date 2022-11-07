// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TextOne extends StatelessWidget {
  String text;
  TextOne({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff6A6A6A),
            fontSize: 12.0,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class TextTwo extends StatelessWidget {
  String text;
  TextTwo({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 20.0,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class TextThree extends StatelessWidget {
  String text;
  TextThree({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff000000),
        fontSize: 12.0,
        fontFamily: 'DM Sans',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
