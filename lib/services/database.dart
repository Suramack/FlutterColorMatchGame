import 'package:cloud_firestore/cloud_firestore.dart';

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
}
