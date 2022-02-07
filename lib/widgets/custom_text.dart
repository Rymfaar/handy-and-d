import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    required this.defaultStyle,
    this.textColor = Colors.black,
    Key? key,
  }) : super(key: key);

  final String text;
  final TextStyle defaultStyle;
  final Color textColor;
  //? Fonts

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
            text: text,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
