import 'package:flutter/material.dart';
import '../core/constants/margin.dart' as margin;
import '../core/constants/text_style.dart';
import 'custom_text.dart';

class CharacterDataFrame extends StatelessWidget {
  const CharacterDataFrame({
    required this.label,
    required this.value,
    this.roleColor,
    this.proficiency = false,
    this.width = 110.0,
    Key? key,
  }) : super(key: key);

  final String label;
  final String value;
  final Color? roleColor;
  final bool proficiency;
  final double width;
  // TODO(rymfire): tap frame

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: <Widget>[
          CustomText(label, defaultStyle: CAPTION),
          const SizedBox(height: margin.MARGIN_XS),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              if (proficiency == true && roleColor != null)
                CircleAvatar(
                  backgroundColor: roleColor,
                  radius: 12.0,
                )
              else
                Container(),
              CustomText(value, defaultStyle: TEXT_BOLD),
            ],
          ),
        ],
      ),
    );
  }
}
