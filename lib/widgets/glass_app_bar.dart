import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/widgets/custom_text.dart';

class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Color textColor;
  final Color itemsColor;
  final double height;
  final double blurSigmaX;
  final double blurSigmaY;

  const GlassAppBar(
      {required this.text,
      this.textColor = const Color(Brand.SECONDARY),
      this.itemsColor = const Color(Brand.SECONDARY),
      this.height = 52.0,
      this.blurSigmaX = 10,
      this.blurSigmaY = 10,
      Key? key})
      : super(key: key);

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, height),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurSigmaX, sigmaY: blurSigmaY),
          child: AppBar(
            title: CustomText(
              text: text,
              textColor: textColor,
              defaultStyle: HEADER,
            ),
            elevation: 0.0,
            backgroundColor: Colors.white.withOpacity(0.2),
            iconTheme: IconThemeData(color: itemsColor),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
