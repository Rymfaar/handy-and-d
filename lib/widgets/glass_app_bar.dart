import 'dart:ui';

import 'package:flutter/material.dart';

class GlassAppBar extends StatefulWidget {
  const GlassAppBar({Key? key}) : super(key: key);

  @override
  _GlassAppBarState createState() => _GlassAppBarState();
}

class _GlassAppBarState extends State<GlassAppBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Positioned(
      top: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(), //TODO
        ),
      ),
    );
  }
}
