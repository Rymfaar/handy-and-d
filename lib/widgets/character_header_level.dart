import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/constants/text_style.dart';
import 'custom_text.dart';

class CharacterHeaderLevel extends StatelessWidget {
  const CharacterHeaderLevel({
    required this.level,
    required this.xp,
    Key? key,
  }): super(key: key);

  final int level;
  final int xp;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SvgPicture.asset(
          'assets/images/im_d20.svg',
          height: 80.0,
          width: 80.0,
        ),
        Column(
          children: <CustomText>[
            CustomText(level.toString(), defaultStyle: TEXT_BOLD),
            CustomText(
                '($xp XP)', defaultStyle: CAPTION)
          ],
        )
      ],
    );
  }
}
