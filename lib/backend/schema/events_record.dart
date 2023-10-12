import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "location_street" field.
  String? _locationStreet;
  String get locationStreet => _locationStreet ?? '';
  bool hasLocationStreet() => _locationStreet != null;

  // "location_suburb" field.
  String? _locationSuburb;
  String get locationSuburb => _locationSuburb ?? '';
  bool hasLocationSuburb() => _locationSuburb != null;

  // "location_city" field.
  String? _locationCity;
  String get locationCity => _locationCity ?? '';
  bool hasLocationCity() => _locationCity != null;

  // "location_province" field.
  String? _locationProvince;
  String get locationProvince => _locationProvince ?? '';
  bool hasLocationProvince() => _locationProvince != null;

  // "contact_person_name" field.
  String? _contactPersonName;
  String get contactPersonName => _contactPersonName ?? '';
  bool hasContactPersonName() => _contactPersonName != null;

  // "contact_person_email" field.
  String? _contactPersonEmail;
  String get contactPersonEmail => _contactPersonEmail ?? '';
  bool hasContactPersonEmail() => _contactPersonEmail != null;

  // "contact_person" field.
  String? _contactPerson;
  String get contactPerson => _contactPerson ?? '';
  bool hasContactPerson() => _contactPerson != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  bool hasFeatured() => _featured != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _locationName = snapshotData['location_name'] as String?;
    _locationStreet = snapshotData['location_street'] as String?;
    _locationSuburb = snapshotData['location_suburb'] as String?;
    _locationCity = snapshotData['location_city'] as String?;
    _locationProvince = snapshotData['location_province'] as String?;
    _contactPersonName = snapshotData['contact_person_name'] as String?;
    _contactPersonEmail = snapshotData['contact_person_email'] as String?;
    _contactPerson = snapshotData['contact_person'] as String?;
    _image = snapshotData['image'] as String?;
    _featured = snapshotData['featured'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? id,
  String? title,
  String? description,
  DateTime? date,
  String? locationName,
  String? locationStreet,
  String? locationSuburb,
  String? locationCity,
  String? locationProvince,
  String? contactPersonName,
  String? contactPersonEmail,
  String? contactPerson,
  String? image,
  bool? featured,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'date': date,
      'location_name': locationName,
      'location_street': locationStreet,
      'location_suburb': locationSuburb,
      'location_city': locationCity,
      'location_province': locationProvince,
      'contact_person_name': contactPersonName,
      'contact_person_email': contactPersonEmail,
      'contact_person': contactPerson,
      'image': image,
      'featured': featured,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.date == e2?.date &&
        e1?.locationName == e2?.locationName &&
        e1?.locationStreet == e2?.locationStreet &&
        e1?.locationSuburb == e2?.locationSuburb &&
        e1?.locationCity == e2?.locationCity &&
        e1?.locationProvince == e2?.locationProvince &&
        e1?.contactPersonName == e2?.contactPersonName &&
        e1?.contactPersonEmail == e2?.contactPersonEmail &&
        e1?.contactPerson == e2?.contactPerson &&
        e1?.image == e2?.image &&
        e1?.featured == e2?.featured;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.title,
        e?.description,
        e?.date,
        e?.locationName,
        e?.locationStreet,
        e?.locationSuburb,
        e?.locationCity,
        e?.locationProvince,
        e?.contactPersonName,
        e?.contactPersonEmail,
        e?.contactPerson,
        e?.image,
        e?.featured
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
