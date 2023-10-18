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
