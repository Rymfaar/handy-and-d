import 'package:flutter/material.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/views/view_character/character_view.dart';

class CharacterPage extends StatefulWidget {
  final CharacterViewModel characterData;

  const CharacterPage({required this.characterData, Key? key}) : super(key: key);

  @override
  CharacterController createState() => CharacterController();
}

class CharacterController extends State<CharacterPage> {
  @override
  Widget build(BuildContext context) {
    return CharacterView(
      context,
      controller: this,
      characterViewModel: widget.characterData,
    );
  }
}
