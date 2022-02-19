import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/character_model.dart';
import '../models/user_model.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<UserModel> fetchUser(String uid) async {
    final DocumentSnapshot<Map<String, dynamic>> snapshot =
        await _db.collection('Users').doc('jWtp19r7g2b4wwMJ5yBi').get();
    final Map<String, dynamic> data =
        Map<String, dynamic>.from(snapshot.data() ?? <String, dynamic>{});

    return UserModel.fromFirestore(data);
  }

  Future<List<CharacterModel>> fetchCharacters() async {
    try {
      final List<Map<String, dynamic>> characterData = <Map<String, dynamic>>[];

      // Getting character_id from user data
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _db.collection('Users').doc('jWtp19r7g2b4wwMJ5yBi').get();
      Map<String, dynamic> data =
          Map<String, dynamic>.from(snapshot.data() ?? <String, dynamic>{});
      final List<String> ids =
          List<String>.from(data['character_id'] as List<dynamic>);

      // Getting each character's data
      for (final String id in ids) {
        snapshot = await _db.collection('Characters').doc(id).get();
        data =
            Map<String, dynamic>.from(snapshot.data() ?? <String, dynamic>{});
        characterData.add(data);
      }

      return characterData
          .map(
              (Map<String, dynamic> data) => CharacterModel.fromFirestore(data))
          .toList();
    } catch (e) {
      print('error');
      // TODO(rymfire): error exception asbstract class (ask mathieu)
      rethrow;
    }
  }
}
