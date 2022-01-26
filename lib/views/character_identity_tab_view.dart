import 'package:flutter/material.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterIdentityTab extends StatelessWidget {
  const CharacterIdentityTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlassAppBar(text: "Identity"),
      body: Center(child: Text('Identity')),
    );
  }
}
