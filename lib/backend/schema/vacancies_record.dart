import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacanciesRecord extends FirestoreRecord {
  VacanciesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "employment_type" field.
  String? _employmentType;
  String get employmentType => _employmentType ?? '';
  bool hasEmploymentType() => _employmentType != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "company_description" field.
  String? _companyDescription;
  String get companyDescription => _companyDescription ?? '';
  bool hasCompanyDescription() => _companyDescription != null;

  // "application_email" field.
  String? _applicationEmail;
  String get applicationEmail => _applicationEmail ?? '';
  bool hasApplicationEmail() => _applicationEmail != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _company = snapshotData['company'] as String?;
    _department = snapshotData['department'] as String?;
    _salary = snapshotData['salary'] as String?;
    _level = snapshotData['level'] as String?;
    _employmentType = snapshotData['employment_type'] as String?;
    _description = snapshotData['description'] as String?;
    _companyDescription = snapshotData['company_description'] as String?;
    _applicationEmail = snapshotData['application_email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vacancies');

  static Stream<VacanciesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacanciesRecord.fromSnapshot(s));

  static Future<VacanciesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacanciesRecord.fromSnapshot(s));

  static VacanciesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacanciesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacanciesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacanciesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacanciesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacanciesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacanciesRecordData({
  String? id,
  String? image,
  String? title,
  String? city,
  String? country,
  String? company,
  String? department,
  String? salary,
  String? level,
  String? employmentType,
  String? description,
  String? companyDescription,
  String? applicationEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'image': image,
      'title': title,
      'city': city,
      'country': country,
      'company': company,
      'department': department,
      'salary': salary,
      'level': level,
      'employment_type': employmentType,
      'description': description,
      'company_description': companyDescription,
      'application_email': applicationEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacanciesRecordDocumentEquality implements Equality<VacanciesRecord> {
  const VacanciesRecordDocumentEquality();

  @override
  bool equals(VacanciesRecord? e1, VacanciesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.image == e2?.image &&
        e1?.title == e2?.title &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.company == e2?.company &&
        e1?.department == e2?.department &&
        e1?.salary == e2?.salary &&
        e1?.level == e2?.level &&
        e1?.employmentType == e2?.employmentType &&
        e1?.description == e2?.description &&
        e1?.companyDescription == e2?.companyDescription &&
        e1?.applicationEmail == e2?.applicationEmail;
  }

  @override
  int hash(VacanciesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.image,
        e?.title,
        e?.city,
        e?.country,
        e?.company,
        e?.department,
        e?.salary,
        e?.level,
        e?.employmentType,
        e?.description,
        e?.companyDescription,
        e?.applicationEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is VacanciesRecord;
}
