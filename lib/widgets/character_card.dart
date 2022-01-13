import 'package:flutter/material.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';

class CharacterCard extends StatelessWidget {
  final CharacterViewModel characterViewModel;

  const CharacterCard({required this.characterViewModel, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(margin.MARGIN_M),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: " + characterViewModel.name.toString()),
            Text("Race: " + characterViewModel.race.toString()),
            Text("Class: " + characterViewModel.roleLabel.toString()),
          ],
        ),
      ),
      color: characterViewModel.secondaryColor,
      elevation: 0.0,
    );
  }
}
