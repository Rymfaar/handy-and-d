import 'package:flutter/material.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterActionsTab extends StatelessWidget {
  const CharacterActionsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlassAppBar(text: "Actions"),
      body: Center(child: Text('Actions')),
    );
  }
}
