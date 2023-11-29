import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getFileLinkAtIndex(
  int index,
  String jsonData,
) {
  try {
    final List<dynamic> data = json.decode(jsonData);
    if (index >= 0 && index < data.length) {
      return data[index]['fileLink'];
    } else {
      return ''; // or handle an error, e.g., return null or throw an exception
    }
  } catch (e) {
    print('Error parsing JSON: $e');
    return ''; // or handle the error as needed
  }
}

String? getDateFrom12MonthsAgo() {
  // Get the current date
  final now = DateTime.now();

  // Calculate the date 12 months ago
  final twelveMonthsAgo = now.subtract(Duration(days: 365));

  // Format the date in the desired format
  final formattedDate =
      DateFormat("yyyy-MM-dd'T'HH:mm:ss").format(twelveMonthsAgo);

  return formattedDate;
}

String? getTodaysDate() {
  // Get the current date and time
  final now = DateTime.now();

  // Format the current date in the desired format
  final formattedDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss").format(now);

  return formattedDate;
}

int hoursAgo(DateTime? time) {
  final now = DateTime.now();
  int hoursDifference;

  if (time != null) {
    final difference = now.difference(time);
    hoursDifference = difference.inHours;
  } else {
    hoursDifference = 4;
  }

  return hoursDifference;
}

List<String>? searchFilter(
  List<String> list,
  String keyword,
) {
  keyword = keyword.toLowerCase();
  return list.where((item) => item.toLowerCase().contains(keyword)).toList();
}

int? getMessageCount(
  int totalMessages,
  int readMessages,
) {
  int count = totalMessages - readMessages;
  if (count <= 0) {
    return 0;
  } else {
    return count;
  }
}

String? getFCMToken(String uid) {
  FirebaseFirestore.instance
      .collection('users')
      .doc(uid)
      .collection('fcm_tokens')
      .orderBy('created_at', descending: true)
      .limit(1)
      .get()
      .then((QuerySnapshot<Map<String, dynamic>> snapshot) {
    if (snapshot.docs.isNotEmpty) {
      // Data exists, you can access it using snapshot.docs.first.data()
      var latestFcmToken = snapshot.docs.first.data()['fcm_token'];
      print('Latest FCM Token: $latestFcmToken');
      return latestFcmToken;
    } else {
      return "testing";
    }
  }).catchError((error) {
    return "testing";
  });
  return "testing";
}
