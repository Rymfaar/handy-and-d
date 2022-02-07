class UserModel {
  UserModel({
    required this.uid,
    required this.characterID,
    this.username,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      username: json['username'] as String,
      characterID: json['character_id'] as List<String>,
    );
  }

  factory UserModel.fromFirestore(Map<dynamic, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      username: json['username'] as String,
      characterID: List<String>.from(json['character_id'] as List<String>),
    );
  }

  final String uid;
  final String? username;
  final List<String> characterID;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'uid': uid,
        'username': username,
        'character_id': characterID,
      };
}
