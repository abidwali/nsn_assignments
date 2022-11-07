import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color? buttonColor, textColor, borderColor;
  final double? borderRadius, buttonWidth, buttonHeight, borderWidth;
  final String buttonText;

  const CustomButton({
    Key? key,
    required this.onTap,
    this.buttonColor,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.buttonWidth,
    this.textColor,
    required this.buttonText,
    this.buttonHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 60),
      height: buttonHeight ?? 40,
      width: buttonWidth,
      decoration: BoxDecoration(
          color: buttonColor ?? const Color(0xff4A2A51),
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          border: Border.all(
            color: borderColor ?? const Color(0xff4A2A51),
            width: borderWidth ?? 2,
          )

          // border: BoxBorder()
          ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
