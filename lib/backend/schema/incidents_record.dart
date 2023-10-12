import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncidentsRecord extends FirestoreRecord {
  IncidentsRecord._(
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
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('incidents');

  static Stream<IncidentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncidentsRecord.fromSnapshot(s));

  static Future<IncidentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncidentsRecord.fromSnapshot(s));

  static IncidentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncidentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncidentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncidentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncidentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncidentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncidentsRecordData({
  String? id,
  String? userId,
  String? type,
  String? department,
  String? priority,
  String? title,
  String? message,
  DateTime? created,
  DateTime? updated,
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
    }.withoutNulls,
  );

  return firestoreData;
}

class IncidentsRecordDocumentEquality implements Equality<IncidentsRecord> {
  const IncidentsRecordDocumentEquality();

  @override
  bool equals(IncidentsRecord? e1, IncidentsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.userId == e2?.userId &&
        e1?.type == e2?.type &&
        e1?.department == e2?.department &&
        e1?.priority == e2?.priority &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.created == e2?.created &&
        e1?.updated == e2?.updated;
  }

  @override
  int hash(IncidentsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.userId,
        e?.type,
        e?.department,
        e?.priority,
        e?.title,
        e?.message,
        e?.created,
        e?.updated
      ]);

  @override
  bool isValidKey(Object? o) => o is IncidentsRecord;
}
