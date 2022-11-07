// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldTypeOne extends StatelessWidget {
  TextEditingController? controller;

  dynamic suffixIcon;
  //DropdownButton? dropDown;
  final bool obscureText;
  TextInputType? keyboardType;
  int? maxInputLength;
  String? hintText;
  List<TextInputFormatter>? inputFormatters;
  CustomTextFieldTypeOne({
    Key? key,
    this.controller,
    this.suffixIcon,
    required this.obscureText,
    this.keyboardType,
    this.maxInputLength,
    this.hintText,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              suffixIcon: suffixIcon,
              fillColor: const Color(0xffEAEAEA),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xffEAEAEA)),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xffEAEAEA)),
                  borderRadius: BorderRadius.circular(12)),
            ),
            style: Theme.of(context).textTheme.bodySmall,
            keyboardType: keyboardType,
            maxLength: maxInputLength,
            inputFormatters: inputFormatters,
          ),
        ],
      ),
    );
  }
}
