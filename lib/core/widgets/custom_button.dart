import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      required this.borderRadius,
      this.onPressed});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius)),
      child: Text(
        text,
        style: Styles.textStyle16
            .copyWith(fontWeight: FontWeight.w700, color: textColor),
      ),
    );
  }
}
