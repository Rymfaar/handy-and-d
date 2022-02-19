import 'package:flutter/material.dart';

import '../core/constants/color_style.dart';
import '../core/constants/text_style.dart';
import 'custom_text.dart';

class ItemNumberIndicator extends StatelessWidget {
  const ItemNumberIndicator({
    this.value = 0,
    Key? key,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        const CircleAvatar(
          backgroundColor: Color(Contrast.WHITE01),
          radius: 17.5,
        ),
        CustomText('$value', defaultStyle: TEXT),
      ],
    );
  }
}
