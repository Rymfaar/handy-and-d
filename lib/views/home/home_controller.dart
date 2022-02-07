import 'package:flutter/material.dart';

import '../../models/character_model.dart';
import '../../services/firestore_service.dart';
import '../../viewmodels/character_viewmodel.dart';
import '../view_character/character_controller.dart';
import 'home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomeController createState() => HomeController();
}

class HomeController extends State<HomePage> {
  String? error;

  void _showCharacterView(CharacterViewModel character) {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (_) {
          return CharacterPage(
            characterData: character,
          );
        },
      ),
    );
  }

  Future<List<CharacterModel>> _fetchCharacters() {
    try {
      return FirestoreService().fetchCharacters();
    } catch (e) {
      rethrow;
    }
  }

  void Function(CharacterViewModel character) get showCharacterView
    => _showCharacterView;
  Future<List<CharacterModel>> Function() get fetchCharacters
    => _fetchCharacters;

  @override
  Widget build(BuildContext context) {
    return HomeView(context, controller: this);
  }
}
