import 'package:flutter_test/flutter_test.dart';
import 'package:handy_and_d/core/enums/loading_status.dart';
import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';

void main() {
  group("Creating CharacterListViewModel", () {
    test("Initializes empty", () async {
      final _characterListViewModel = CharacterListViewModel();

      expect(_characterListViewModel.characters.length, 0);
      expect(_characterListViewModel.loadingStatus, LoadingStatus.EMPTY);
    });
  });
}
