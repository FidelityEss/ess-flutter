import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncidentClassificationsRecord extends FirestoreRecord {
  IncidentClassificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "parent" field.
  String? _parent;
  String get parent => _parent ?? '';
  bool hasParent() => _parent != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _parent = snapshotData['parent'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('incident_classifications');

  static Stream<IncidentClassificationsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => IncidentClassificationsRecord.fromSnapshot(s));

  static Future<IncidentClassificationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IncidentClassificationsRecord.fromSnapshot(s));

  static IncidentClassificationsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      IncidentClassificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncidentClassificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncidentClassificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncidentClassificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncidentClassificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncidentClassificationsRecordData({
  String? parent,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'parent': parent,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncidentClassificationsRecordDocumentEquality
    implements Equality<IncidentClassificationsRecord> {
  const IncidentClassificationsRecordDocumentEquality();

  @override
  bool equals(
      IncidentClassificationsRecord? e1, IncidentClassificationsRecord? e2) {
    return e1?.parent == e2?.parent && e1?.name == e2?.name;
  }

  @override
  int hash(IncidentClassificationsRecord? e) =>
      const ListEquality().hash([e?.parent, e?.name]);

  @override
  bool isValidKey(Object? o) => o is IncidentClassificationsRecord;
}
