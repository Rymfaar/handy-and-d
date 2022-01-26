import 'package:flutter/material.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterNotesTab extends StatelessWidget {
  const CharacterNotesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlassAppBar(text: "Notes"),
      body: Center(child: Text('Notes')),
    );
  }
}
