import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle defaultStyle;
  final Color textColor;
  //? Fonts

  const CustomText(
      {required this.text,
      required this.defaultStyle,
      this.textColor = Colors.black,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: [TextSpan(text: text, style: TextStyle(color: textColor))],
      ),
    );
  }
}
