import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_2/models/player.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
//collection reference
  final CollectionReference myScoreCollection =
      Firestore.instance.collection('players');
  Future updateUserdata(String name, int age, int strength) async {
    return await myScoreCollection
        .document(uid)
        .setData({'name': name, 'age': age, 'strength': strength});
  }

//Player list from snapshot
  List<Player> _playerListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Player(
          name: doc.data['name'] ?? '',
          age: doc.data['age'] ?? 0,
          strength: doc.data['strength'] ?? 0);
    }).toList();
  }

  //get players stream
  Stream<List<Player>> get players {
    return myScoreCollection.snapshots().map(_playerListFromSnapshot);
  }
}
