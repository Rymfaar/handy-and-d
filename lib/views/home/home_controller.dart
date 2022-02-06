import 'package:flutter/material.dart';
import 'package:handy_and_d/models/character_model.dart';
import 'package:handy_and_d/services/firestore_service.dart';
import 'package:handy_and_d/views/view_character/character_view.dart';
import 'package:handy_and_d/views/home/home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomeController createState() => HomeController();
}

class HomeController extends State<HomePage> {
  String? error;

  void _showCharacterView(character) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return CharacterView(
            characterViewModel: character,
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

  get showCharacterView => _showCharacterView;
  get fetchCharacters => _fetchCharacters;

  @override
  Widget build(BuildContext context) {
    return HomeView(context, controller: this);
  }
}
