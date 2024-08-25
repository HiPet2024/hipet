import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC_sPEaOQ6b9RoWtt8OXT_uv8RuXWHZEIM",
            authDomain: "hipet-2024.firebaseapp.com",
            projectId: "hipet-2024",
            storageBucket: "hipet-2024.appspot.com",
            messagingSenderId: "917531691203",
            appId: "1:917531691203:web:48ed3118f3078660fefa76",
            measurementId: "G-V1MSXP6J3Z"));
  } else {
    await Firebase.initializeApp();
  }
}
