import 'package:flutter/material.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterInventoryTab extends StatelessWidget {
  const CharacterInventoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlassAppBar(text: "Inventory"),
      body: Center(child: Text('Inventory')),
    );
  }
}
