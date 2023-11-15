import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncidentCategoriesRecord extends FirestoreRecord {
  IncidentCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('incident_categories');

  static Stream<IncidentCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncidentCategoriesRecord.fromSnapshot(s));

  static Future<IncidentCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IncidentCategoriesRecord.fromSnapshot(s));

  static IncidentCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncidentCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncidentCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncidentCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncidentCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncidentCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncidentCategoriesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncidentCategoriesRecordDocumentEquality
    implements Equality<IncidentCategoriesRecord> {
  const IncidentCategoriesRecordDocumentEquality();

  @override
  bool equals(IncidentCategoriesRecord? e1, IncidentCategoriesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(IncidentCategoriesRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is IncidentCategoriesRecord;
}
