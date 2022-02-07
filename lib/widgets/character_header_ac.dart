import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/constants/text_style.dart';
import 'custom_text.dart';

class CharacterHeaderAC extends StatelessWidget {
  const CharacterHeaderAC({
    required this.ac,
    Key? key,
  }) : super(key: key);

  final int ac;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SvgPicture.asset(
          'assets/images/im_shield.svg',
          height: 80.0,
          width: 80.0,
        ),
        CustomText(ac.toString(), defaultStyle: TEXT_BOLD),
      ],
    );
  }
}
