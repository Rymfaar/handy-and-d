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
    return SizedBox.fromSize(
      size: const Size.fromHeight(154),
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: characterViewModel.secondaryColor,
        elevation: 0.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(margin.MARGIN_M),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //? What is the text is too long
                      CustomText(
                          text: characterViewModel.name.toString(),
                          defaultStyle: TEXT_BOLD),
                      const SizedBox(
                        height: 4.0,
                      ),
                      CustomText(
                          text: characterViewModel.race.toString(),
                          defaultStyle: TEXT),
                      const SizedBox(
                        height: 4.0,
                      ),
                      CustomText(
                          text: characterViewModel.roleLabel,
                          defaultStyle: TEXT),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(alignment: Alignment.center, children: [
                        SvgPicture.asset(
                          "assets/images/im_d20.svg",
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                            text: characterViewModel.level.toString(),
                            defaultStyle: TEXT_BOLD)
                      ]),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Stack(alignment: Alignment.center, children: [
                        SvgPicture.asset(
                          "assets/images/im_heart.svg",
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                            text: characterViewModel.maxHP.toString(),
                            defaultStyle: TEXT_BOLD)
                      ]),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Stack(alignment: Alignment.center, children: [
                        SvgPicture.asset(
                          "assets/images/im_shield.svg",
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                            text: characterViewModel.ac.toString(),
                            defaultStyle: TEXT_BOLD)
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(15 / 360),
              // turns: const AlwaysStoppedAnimation(0),
              child: SvgPicture.asset(
                characterViewModel.roleImage,
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
