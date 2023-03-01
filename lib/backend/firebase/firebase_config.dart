import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAOMsljM1kxk5A7AnYiMwb3bSEZtU65kLo",
            authDomain: "casca-378d8.firebaseapp.com",
            projectId: "casca-378d8",
            storageBucket: "casca-378d8.appspot.com",
            messagingSenderId: "969756798414",
            appId: "1:969756798414:web:e98a495def90745c8e4f9f",
            measurementId: "G-K0D85QT1XY"));
  } else {
    await Firebase.initializeApp();
  }
}
