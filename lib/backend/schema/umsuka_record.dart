import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UmsukaRecord extends FirestoreRecord {
  UmsukaRecord._(
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

  // "eid" field.
  String? _eid;
  String get eid => _eid ?? '';
  bool hasEid() => _eid != null;

  // "cn" field.
  String? _cn;
  String get cn => _cn ?? '';
  bool hasCn() => _cn != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "purpose" field.
  String? _purpose;
  String get purpose => _purpose ?? '';
  bool hasPurpose() => _purpose != null;

  // "stage" field.
  String? _stage;
  String get stage => _stage ?? '';
  bool hasStage() => _stage != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "updated" field.
  DateTime? _updated;
  DateTime? get updated => _updated;
  bool hasUpdated() => _updated != null;

  // "en" field.
  String? _en;
  String get en => _en ?? '';
  bool hasEn() => _en != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
    _eid = snapshotData['eid'] as String?;
    _cn = snapshotData['cn'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _amount = castToType<int>(snapshotData['amount']);
    _purpose = snapshotData['purpose'] as String?;
    _stage = snapshotData['stage'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _updated = snapshotData['updated'] as DateTime?;
    _en = snapshotData['en'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('umsuka');

  static Stream<UmsukaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UmsukaRecord.fromSnapshot(s));

  static Future<UmsukaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UmsukaRecord.fromSnapshot(s));

  static UmsukaRecord fromSnapshot(DocumentSnapshot snapshot) => UmsukaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UmsukaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UmsukaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UmsukaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UmsukaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUmsukaRecordData({
  String? id,
  String? name,
  String? surname,
  String? eid,
  String? cn,
  String? phone,
  String? email,
  int? amount,
  String? purpose,
  String? stage,
  DateTime? created,
  DateTime? updated,
  String? en,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'surname': surname,
      'eid': eid,
      'cn': cn,
      'phone': phone,
      'email': email,
      'amount': amount,
      'purpose': purpose,
      'stage': stage,
      'created': created,
      'updated': updated,
      'en': en,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UmsukaRecordDocumentEquality implements Equality<UmsukaRecord> {
  const UmsukaRecordDocumentEquality();

  @override
  bool equals(UmsukaRecord? e1, UmsukaRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.surname == e2?.surname &&
        e1?.eid == e2?.eid &&
        e1?.cn == e2?.cn &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.amount == e2?.amount &&
        e1?.purpose == e2?.purpose &&
        e1?.stage == e2?.stage &&
        e1?.created == e2?.created &&
        e1?.updated == e2?.updated &&
        e1?.en == e2?.en &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UmsukaRecord? e) => const ListEquality().hash([
        e?.id,
        e?.name,
        e?.surname,
        e?.eid,
        e?.cn,
        e?.phone,
        e?.email,
        e?.amount,
        e?.purpose,
        e?.stage,
        e?.created,
        e?.updated,
        e?.en,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is UmsukaRecord;
}
