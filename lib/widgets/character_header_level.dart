import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterHeaderLevel extends StatelessWidget {
  final int level;
  final int xp;

  const CharacterHeaderLevel({required this.level, required this.xp, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/im_d20.svg",
          height: 80.0,
          width: 80.0,
        ),
        Column(
          children: [
            CustomText(level.toString(), defaultStyle: TEXT_BOLD),
            CustomText(
                "(" + xp.toString() + " XP)", defaultStyle: CAPTION)
          ],
        )
      ],
    );
  }
}
