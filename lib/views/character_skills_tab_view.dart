import 'package:flutter/material.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterSkillsTab extends StatelessWidget {
  const CharacterSkillsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlassAppBar(text: "Stats & skills"),
      body: Center(
        child: Text("Skills"),
      ),
    );
  }
}
