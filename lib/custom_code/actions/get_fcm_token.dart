// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> getFcmToken(String uid) async {
  final userDoc = FirebaseFirestore.instance.collection('users').doc(uid);
  final fcmTokens = userDoc.collection('fcm_tokens');

  final querySnapshot =
      await fcmTokens.orderBy('created_at', descending: true).limit(1).get();
  final latestTokenDoc = querySnapshot.docs.first;

  if (latestTokenDoc != null) {
    final latestToken = latestTokenDoc['fcm_token'];
    return latestToken;
  } else {
    return '';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
