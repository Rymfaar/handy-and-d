import 'package:flutter/material.dart';
import 'package:handy_and_d/core/enums/loading_status.dart';
import 'package:handy_and_d/models/character_model.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/services/firestore_service.dart';

class CharacterListViewModel with ChangeNotifier {
  List<CharacterViewModel> characters = <CharacterViewModel>[];
  LoadingStatus loadingStatus = LoadingStatus.EMPTY;

  void getCharacterHeaders() async {
    List<CharacterModel> data = await FirestoreService().fetchCharacters();
    loadingStatus = LoadingStatus.SEARCHING;
    notifyListeners();

    characters = data
        .map((character) => CharacterViewModel(character: character))
        .toList();
    if (characters.isEmpty) {
      loadingStatus = LoadingStatus.EMPTY;
    } else {
      loadingStatus = LoadingStatus.COMPLETED;
    }
    notifyListeners();
  }
}
