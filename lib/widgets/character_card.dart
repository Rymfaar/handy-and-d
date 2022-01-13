import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterCard extends StatelessWidget {
  final CharacterViewModel characterViewModel;

  const CharacterCard({required this.characterViewModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(margin.MARGIN_M),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: characterViewModel.name.toString(),
                    defaultStyle: TEXT_BOLD),
                CustomText(
                    text: characterViewModel.race.toString(),
                    defaultStyle: TEXT),
                CustomText(
                    text: characterViewModel.roleLabel, defaultStyle: TEXT),
              ],
            ),
            SvgPicture.asset(
              characterViewModel.roleImage,
              height: 150,
              width: 150,
            )
          ],
        ),
      ),
      color: characterViewModel.secondaryColor,
      elevation: 0.0,
    );
  }
}
