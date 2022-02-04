import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterHeaderAC extends StatelessWidget {
  final int ac;

  const CharacterHeaderAC({required this.ac, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/im_shield.svg",
          height: 80.0,
          width: 80.0,
        ),
        CustomText(text: ac.toString(), defaultStyle: TEXT_BOLD),
      ],
    );
  }
}
