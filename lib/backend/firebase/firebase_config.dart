import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDJent6WUZYgI2Oun-iXYorOdonHgg77sM",
            authDomain: "to-do-app-5x03am.firebaseapp.com",
            projectId: "to-do-app-5x03am",
            storageBucket: "to-do-app-5x03am.firebasestorage.app",
            messagingSenderId: "1059326374563",
            appId: "1:1059326374563:web:8879e4d84cde7325198516"));
  } else {
    await Firebase.initializeApp();
  }
}
