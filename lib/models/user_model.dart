class UserModel {
  UserModel({
    required this.uid,
    required this.characterID,
    this.username,
  });

  final String uid;
  final String? username;
  final List<String> characterID;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      username: json['username'],
      characterID: json['character_id'],
    );
  }

  factory UserModel.fromFirestore(Map<dynamic, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      username: json['username'],
      characterID: List<String>.from(json['character_id']),
    );
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "character_id": characterID,
      };
}
