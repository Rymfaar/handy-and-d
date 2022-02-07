import 'package:flutter/material.dart';
import '../core/constants/color_style.dart';
import '../core/constants/text_style.dart';
import 'custom_text.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.label, {Key? key}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomText(
          label,
          defaultStyle: HEADER,
          textColor: const Color(Brand.SECONDARY),
        ),
        const SizedBox(height: 2.0),
        const Divider(
          color: Color(Brand.TERTIARY),
          thickness: 1.0,
        )
      ],
    );
  }
}
