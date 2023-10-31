import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FraudUpdatesRecord extends FirestoreRecord {
  FraudUpdatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _message = snapshotData['message'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('fraud_updates')
          : FirebaseFirestore.instance.collectionGroup('fraud_updates');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('fraud_updates').doc();

  static Stream<FraudUpdatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FraudUpdatesRecord.fromSnapshot(s));

  static Future<FraudUpdatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FraudUpdatesRecord.fromSnapshot(s));

  static FraudUpdatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FraudUpdatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FraudUpdatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FraudUpdatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FraudUpdatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FraudUpdatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFraudUpdatesRecordData({
  String? id,
  String? userId,
  DateTime? created,
  String? message,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user_id': userId,
      'created': created,
      'message': message,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FraudUpdatesRecordDocumentEquality
    implements Equality<FraudUpdatesRecord> {
  const FraudUpdatesRecordDocumentEquality();

  @override
  bool equals(FraudUpdatesRecord? e1, FraudUpdatesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.userId == e2?.userId &&
        e1?.created == e2?.created &&
        e1?.message == e2?.message &&
        e1?.name == e2?.name;
  }

  @override
  int hash(FraudUpdatesRecord? e) => const ListEquality()
      .hash([e?.id, e?.userId, e?.created, e?.message, e?.name]);

  @override
  bool isValidKey(Object? o) => o is FraudUpdatesRecord;
}
