import 'package:flutter/material.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';

class CharacterView extends StatelessWidget {
  final CharacterViewModel characterViewModel;

  const CharacterView({required this.characterViewModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(characterViewModel.name.toString()),
      ),
    );
  }
}
