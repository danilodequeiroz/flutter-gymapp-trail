import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebase = FirebaseAuth.instance;

  void postNewUser({
        required String email,
        required String password,
        required String name
  }) async {
    UserCredential userCredential = await _firebase
        .createUserWithEmailAndPassword(email: email, password: password);
    userCredential.user?.updateDisplayName(name);
  }
}
