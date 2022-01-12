import 'package:handy_and_d/models/character_model.dart';

class CharacterViewModel {
  final CharacterModel _characterModel;

  CharacterViewModel({required CharacterModel character})
      : _characterModel = character;

  String? get name => _characterModel.name;
  String? get role => _characterModel.role;
  String? get race => _characterModel.race;
  int? get xp => _characterModel.xp;
  int? get maxHP => _characterModel.maxHP;
  int? get ac => _characterModel.ac;
}
