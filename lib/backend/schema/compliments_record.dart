import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComplimentsRecord extends FirestoreRecord {
  ComplimentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "compliment_type" field.
  String? _complimentType;
  String get complimentType => _complimentType ?? '';
  bool hasComplimentType() => _complimentType != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _department = snapshotData['department'] as String?;
    _complimentType = snapshotData['compliment_type'] as String?;
    _message = snapshotData['message'] as String?;
    _created = snapshotData['created'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compliments');

  static Stream<ComplimentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComplimentsRecord.fromSnapshot(s));

  static Future<ComplimentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComplimentsRecord.fromSnapshot(s));

  static ComplimentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComplimentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComplimentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComplimentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComplimentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComplimentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComplimentsRecordData({
  String? id,
  String? name,
  String? surname,
  String? email,
  String? phoneNumber,
  String? department,
  String? complimentType,
  String? message,
  DateTime? created,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'surname': surname,
      'email': email,
      'phone_number': phoneNumber,
      'department': department,
      'compliment_type': complimentType,
      'message': message,
      'created': created,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComplimentsRecordDocumentEquality implements Equality<ComplimentsRecord> {
  const ComplimentsRecordDocumentEquality();

  @override
  bool equals(ComplimentsRecord? e1, ComplimentsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.department == e2?.department &&
        e1?.complimentType == e2?.complimentType &&
        e1?.message == e2?.message &&
        e1?.created == e2?.created;
  }

  @override
  int hash(ComplimentsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.surname,
        e?.email,
        e?.phoneNumber,
        e?.department,
        e?.complimentType,
        e?.message,
        e?.created
      ]);

  @override
  bool isValidKey(Object? o) => o is ComplimentsRecord;
}
