import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../core/constants/margin.dart' as margin;
import '../core/constants/text_style.dart';
import '../viewmodels/character_viewmodel.dart';
import 'custom_text.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.characterViewModel,
    Key? key,
  }) : super(key: key);

  final CharacterViewModel characterViewModel;

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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(margin.MARGIN_M),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //? What if the text is too long
                      CustomText(
                          characterViewModel.name,
                          defaultStyle: TEXT_BOLD),
                      const SizedBox(
                        height: 4.0,
                      ),
                      CustomText(
                          characterViewModel.race,
                          defaultStyle: TEXT),
                      const SizedBox(
                        height: 4.0,
                      ),
                      CustomText(
                          characterViewModel.roleLabel,
                          defaultStyle: TEXT),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Stack(alignment: Alignment.center, children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/im_d20.svg',
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                            characterViewModel.level.toString(),
                            defaultStyle: TEXT_BOLD)
                      ]),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Stack(alignment: Alignment.center, children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/im_heart.svg',
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                            characterViewModel.maxHP.toString(),
                            defaultStyle: TEXT_BOLD)
                      ]),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Stack(alignment: Alignment.center, children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/im_shield.svg',
                          height: 40,
                          width: 40,
                        ),
                        CustomText(
                            characterViewModel.ac.toString(),
                            defaultStyle: TEXT_BOLD)
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            RotationTransition(
              turns: const AlwaysStoppedAnimation<double>(15 / 360),
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
