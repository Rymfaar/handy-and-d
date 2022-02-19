import '../core/constants/proficiency.dart';
import '../core/constants/role.dart';
import 'item_model.dart';

class CharacterModel {
  CharacterModel({
    required this.name,
    required this.role,
    required this.race,
    required this.xp,
    required this.maxHP,
    required this.ac,
    required this.abilities,
    this.proficiencies = const <Proficiency>[],
    this.items = const <ItemModel>[],
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> abilities =
        json['abilities'] as Map<String, dynamic>;

    return CharacterModel(
      name: json['name'] as String,
      role: Role.values[json['role'] as int],
      race: json['race'] as String,
      xp: json['xp'] as int,
      maxHP: json['maxHP'] as int,
      ac: json['ac'] as int,
      abilities: <String, int>{
        'str': abilities['str'] as int,
        'dex': abilities['dex'] as int,
        'con': abilities['con'] as int,
        'int': abilities['int'] as int,
        'wis': abilities['wis'] as int,
        'cha': abilities['cha'] as int,
      },
      proficiencies: List<int>.from(json['proficiencies'] as Iterable<dynamic>)
          .map((int proficiency) => Proficiency.values[proficiency])
          .toList(),
    );
  }

  factory CharacterModel.fromFirestore(Map<String, dynamic> json) {
    final Map<String, dynamic> abilities =
        json['abilities'] as Map<String, dynamic>;
    final List<Map<String, dynamic>> items =
        List<Map<String, dynamic>>.from(json['items'] as List<dynamic>);

    return CharacterModel(
      name: json['name'] as String,
      role: Role.values[json['role'] as int],
      race: json['race'] as String,
      xp: json['xp'] as int,
      maxHP: json['max_hp'] as int,
      ac: json['ac'] as int,
      abilities: <String, int>{
        'str': abilities['str'] as int,
        'dex': abilities['dex'] as int,
        'con': abilities['con'] as int,
        'int': abilities['int'] as int,
        'wis': abilities['wis'] as int,
        'cha': abilities['cha'] as int,
      },
      proficiencies: List<int>.from(json['proficiencies'] as Iterable<dynamic>)
          .map((int proficiency) => Proficiency.values[proficiency])
          .toList(),
      items: items
          .map((Map<String, dynamic> data) => ItemModel.fromFirebase(data))
          .toList(),
    );
  }

  final String name;
  final Role role;
  final String race;
  final Map<String, int> abilities;
  final int xp;
  final int maxHP;
  final int ac;
  final List<Proficiency> proficiencies;
  final List<ItemModel> items;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'role': role.index,
        'race': race,
        'abilities': abilities,
        'xp': xp,
        'maxHP': maxHP,
        'ac': ac,
        'proficiencies': proficiencies.map((Proficiency p) => p.index).toList(),
      };
}
