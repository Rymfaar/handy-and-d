import '../core/constants/role.dart';

class CharacterModel {
  CharacterModel({
    required this.name,
    required this.role,
    required this.race,
    required this.xp,
    required this.maxHP,
    required this.ac,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      name: json['name'] as String,
      role: Role.values[json['role'] as int],
      race: json['race'] as String,
      xp: json['xp'] as int,
      maxHP: json['maxHP'] as int,
      ac: json['ac'] as int,
    );
  }

  factory CharacterModel.fromFirestore(Map<String, dynamic> json) {
    return CharacterModel(
      name: json['name'] as String,
      role: Role.values[json['role'] as int],
      race: json['race'] as String,
      xp: json['xp'] as int,
      maxHP: json['max_hp'] as int,
      ac: json['ac'] as int,
    );
  }

  final String name;
  final Role role;
  final String race;
  final int xp;
  final int maxHP;
  final int ac;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'role': role.index,
        'race': race,
        'xp': xp,
        'maxHP': maxHP,
        'ac': ac,
      };
}
