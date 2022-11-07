// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:nsn_assignments/driverapp/utilis/constant_colors.dart';

class ListTileUploadDoc extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const ListTileUploadDoc({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          ListTile(
            title: Text(
              text,
              style: const TextStyle(
                color: kdarkGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            tileColor: ktextFieldFill,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
