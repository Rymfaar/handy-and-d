import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class SectionTitle extends StatelessWidget {
  final String label;

  const SectionTitle(this.label, {Key? key}) : super(key: key);

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
