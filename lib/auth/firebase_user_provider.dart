import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CascaFirebaseUser {
  CascaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CascaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CascaFirebaseUser> cascaFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CascaFirebaseUser>(
      (user) {
        currentUser = CascaFirebaseUser(user);
        return currentUser!;
      },
    );
