import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          text,
          style: TextStyles.style16
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ));
  }
}
