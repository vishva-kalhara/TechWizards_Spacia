import 'package:firebase_auth/firebase_auth.dart';
// import 'dart:convert';
// import 'package:firebase_core/firebase_core.dart';

// class AuthService {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   User? get currentUser => _firebaseAuth.currentUser;

//   Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

//   Future<void> signInWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> createUserWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> signOut() async {
//     await _firebaseAuth.signOut();
//   }
// }

class AuthService {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // Anonimously
  Future signInAnon() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      // var res=
      var user = userCredential.user;
      var uid = user?.uid;
      return uid;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
