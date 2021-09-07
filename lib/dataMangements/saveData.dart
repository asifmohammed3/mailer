import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference users = FirebaseFirestore.instance.collection('Users');

Future<void> SaveData(email, password) async {
  var a = await FirebaseFirestore.instance.collection('collection')
      .doc(email)
      .get();
  if (a.exists) {
    print('Exists');
    return users
        .doc(email)
        .update({
      'sender_email': email, // John Doe
      'sender_password': password, // Stokes and Sons
    })
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  if (!a.exists) {
    print('Not exists');
    return users
        .doc(email)
        .set({
      'sender_email': email, // John Doe
      'sender_password': password, // Stokes and Sons
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}