import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgmTxJWZ48yDLW4KK3nUeYU5ALGBwzA6E",
            authDomain: "fess-a6f94.firebaseapp.com",
            projectId: "fess-a6f94",
            storageBucket: "fess-a6f94.appspot.com",
            messagingSenderId: "571461684738",
            appId: "1:571461684738:web:0dbb87002bb69cf88de11b",
            measurementId: "G-CZHWEZ142R"));
  } else {
    await Firebase.initializeApp();
  }
}
