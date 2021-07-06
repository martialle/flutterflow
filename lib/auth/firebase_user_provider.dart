import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FutuafricmobileFirebaseUser {
  FutuafricmobileFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FutuafricmobileFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FutuafricmobileFirebaseUser> futuafricmobileFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FutuafricmobileFirebaseUser>(
            (user) => currentUser = FutuafricmobileFirebaseUser(user));
