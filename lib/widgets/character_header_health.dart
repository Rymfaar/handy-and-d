import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/constants/text_style.dart';
import 'custom_text.dart';

class CharacterHeaderHealth extends StatelessWidget {
  const CharacterHeaderHealth({
    required this.currentHP,
    required this.maxHP,
    Key? key,
  }) : super(key: key);

  final int currentHP;
  final int maxHP;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SvgPicture.asset(
          'assets/images/im_heart.svg',
          height: 80.0,
          width: 80.0,
        ),
        Column(
          children: <CustomText>[
            CustomText(currentHP.toString(), defaultStyle: TEXT_BOLD),
            CustomText(maxHP.toString(), defaultStyle: CAPTION)
          ],
        ),
      ],
    );
  }
}
