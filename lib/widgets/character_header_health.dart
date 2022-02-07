import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterHeaderHealth extends StatelessWidget {
  final int currentHP;
  final int maxHP;

  const CharacterHeaderHealth(
      {required this.currentHP, required this.maxHP, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/im_heart.svg",
          height: 80.0,
          width: 80.0,
        ),
        Column(
          children: [
            CustomText(currentHP.toString(), defaultStyle: TEXT_BOLD),
            CustomText(maxHP.toString(), defaultStyle: CAPTION)
          ],
        ),
      ],
    );
  }
}
