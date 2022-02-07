import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class CharacterDataFrame extends StatelessWidget {
  final String label;
  final String value;
  final int? roleColor;
  final bool proficiency;
  //todo: tap frame

  const CharacterDataFrame({
    required this.label,
    required this.value,
    this.roleColor,
    this.proficiency = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.0,
      child: Column(
        children: [
          CustomText(label, defaultStyle: CAPTION),
          const SizedBox(height: margin.MARGIN_XS),
          Stack(
            alignment: Alignment.center,
            children: [
              proficiency == true && roleColor != null
                  ? CircleAvatar(
                      backgroundColor: Color(roleColor!),
                      radius: 12.0,
                    )
                  : Container(),
              CustomText(value, defaultStyle: TEXT_BOLD),
            ],
          ),
        ],
      ),
    );
  }
}
