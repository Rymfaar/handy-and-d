import 'package:flutter/material.dart';
import '../../viewmodels/character_viewmodel.dart';
import 'character_view.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({required this.characterData, Key? key}) : super(key: key);
  
  final CharacterViewModel characterData;

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
