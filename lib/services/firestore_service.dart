import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:handy_and_d/models/character_model.dart';
import 'package:handy_and_d/models/user_model.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<UserModel> fetchUser(String uid) async {
    final snapshot = await _db.collection('Users').doc('jWtp19r7g2b4wwMJ5yBi').get();
    final data = Map<String, dynamic>.from(snapshot.data() ?? {});

    return UserModel.fromFirestore(data);
  }

  Future<List<CharacterModel>> fetchCharacters() async {
    try {
      final List<Map<String, dynamic>> characterData = [];

      // Getting character_id from user data
      var snapshot = await _db.collection('Users').doc('jWtp19r7g2b4wwMJ5yBi').get();
      var data = Map<String, dynamic>.from(snapshot.data() ?? {});
      final ids = List<String>.from(data['character_id']);

      // Getting each character's data
      for (final id in ids) {
        snapshot = await _db.collection('Characters').doc(id).get();
        data = Map<String, dynamic>.from(snapshot.data() ?? {});
        characterData.add(data);
      }
      return characterData.map((data) => CharacterModel.fromFirestore(data)).toList();
    } catch (e) {
      // TODO error exception asbstract class (ask mathieu)
      rethrow;
    }
  }
}
