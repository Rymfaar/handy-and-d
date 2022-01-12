class CharacterModel {
  CharacterModel(
      {required this.name,
      required this.role,
      required this.race,
      required this.xp,
      required this.maxHP,
      required this.ac});

  final String? name;
  final String? role; // todo: change to Role enum (core/constants)
  final String? race;
  final int? xp;
  final int? maxHP;
  final int? ac;

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      name: json["name"] ?? "",
      role: json["role"] ?? "",
      race: json["race"] ?? "",
      xp: json["xp"] ?? 0,
      maxHP: json["maxHP"] ?? 0,
      ac: json["ac"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name ?? "",
        "role": role ?? "",
        "race": race ?? "",
        "xp": xp ?? 0,
        "maxHP": maxHP ?? 0,
        "ac": ac ?? 0,
      };
}
