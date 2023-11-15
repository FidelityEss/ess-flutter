import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReadbyRecord extends FirestoreRecord {
  ReadbyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('readby')
          : FirebaseFirestore.instance.collectionGroup('readby');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('readby').doc();

  static Stream<ReadbyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReadbyRecord.fromSnapshot(s));

  static Future<ReadbyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReadbyRecord.fromSnapshot(s));

  static ReadbyRecord fromSnapshot(DocumentSnapshot snapshot) => ReadbyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReadbyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReadbyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReadbyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReadbyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReadbyRecordData({
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReadbyRecordDocumentEquality implements Equality<ReadbyRecord> {
  const ReadbyRecordDocumentEquality();

  @override
  bool equals(ReadbyRecord? e1, ReadbyRecord? e2) {
    return e1?.uid == e2?.uid;
  }

  @override
  int hash(ReadbyRecord? e) => const ListEquality().hash([e?.uid]);

  @override
  bool isValidKey(Object? o) => o is ReadbyRecord;
}
