// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../utilis/constant_colors.dart';

class UploadDocument extends StatelessWidget {
  final Icon? icon;
  final double? height, width;
  final String title;
  final VoidCallback onTap;
  const UploadDocument({
    Key? key,
    required this.title,
    required this.onTap,
    this.icon,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 141,
        width: width ?? 228,
        decoration: BoxDecoration(
          color: kmediumGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               icon ?? const Icon(Icons.file_upload_outlined),
              const SizedBox(width: 5),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
