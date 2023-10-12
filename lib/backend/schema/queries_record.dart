import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QueriesRecord extends FirestoreRecord {
  QueriesRecord._(
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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "priority" field.
  String? _priority;
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "updated" field.
  DateTime? _updated;
  DateTime? get updated => _updated;
  bool hasUpdated() => _updated != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _type = snapshotData['type'] as String?;
    _department = snapshotData['department'] as String?;
    _priority = snapshotData['priority'] as String?;
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _updated = snapshotData['updated'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('queries');

  static Stream<QueriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QueriesRecord.fromSnapshot(s));

  static Future<QueriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QueriesRecord.fromSnapshot(s));

  static QueriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QueriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QueriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QueriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QueriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QueriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQueriesRecordData({
  String? id,
  String? userId,
  String? type,
  String? department,
  String? priority,
  String? title,
  String? message,
  DateTime? created,
  DateTime? updated,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'user_id': userId,
      'type': type,
      'department': department,
      'priority': priority,
      'title': title,
      'message': message,
      'created': created,
      'updated': updated,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class QueriesRecordDocumentEquality implements Equality<QueriesRecord> {
  const QueriesRecordDocumentEquality();

  @override
  bool equals(QueriesRecord? e1, QueriesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.userId == e2?.userId &&
        e1?.type == e2?.type &&
        e1?.department == e2?.department &&
        e1?.priority == e2?.priority &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.created == e2?.created &&
        e1?.updated == e2?.updated &&
        e1?.location == e2?.location;
  }

  @override
  int hash(QueriesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.userId,
        e?.type,
        e?.department,
        e?.priority,
        e?.title,
        e?.message,
        e?.created,
        e?.updated,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is QueriesRecord;
}
