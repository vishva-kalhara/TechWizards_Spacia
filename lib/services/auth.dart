import 'package:firebase_auth/firebase_auth.dart';
import 'package:spacia/models/user.dart';
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
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create User object based on Firebase User
  UserModel? _userFromFirebaseUser(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // Crete the stream for check the suth changes in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // Anonimously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      // var user = userCredential.user;
      // var uid = user?.uid;
      return _userFromFirebaseUser(user);
      // return _userFromFirebaseUser(uid!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
