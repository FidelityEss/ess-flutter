// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayslipObjectStruct extends FFFirebaseStruct {
  PayslipObjectStruct({
    String? filename,
    String? payrollYear,
    String? payrollPeriod,
    String? fileLink,
    String? friendlyDescription,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _filename = filename,
        _payrollYear = payrollYear,
        _payrollPeriod = payrollPeriod,
        _fileLink = fileLink,
        _friendlyDescription = friendlyDescription,
        super(firestoreUtilData);

  // "filename" field.
  String? _filename;
  String get filename => _filename ?? '';
  set filename(String? val) => _filename = val;
  bool hasFilename() => _filename != null;

  // "payrollYear" field.
  String? _payrollYear;
  String get payrollYear => _payrollYear ?? '';
  set payrollYear(String? val) => _payrollYear = val;
  bool hasPayrollYear() => _payrollYear != null;

  // "payrollPeriod" field.
  String? _payrollPeriod;
  String get payrollPeriod => _payrollPeriod ?? '';
  set payrollPeriod(String? val) => _payrollPeriod = val;
  bool hasPayrollPeriod() => _payrollPeriod != null;

  // "fileLink" field.
  String? _fileLink;
  String get fileLink => _fileLink ?? '';
  set fileLink(String? val) => _fileLink = val;
  bool hasFileLink() => _fileLink != null;

  // "friendlyDescription" field.
  String? _friendlyDescription;
  String get friendlyDescription => _friendlyDescription ?? '';
  set friendlyDescription(String? val) => _friendlyDescription = val;
  bool hasFriendlyDescription() => _friendlyDescription != null;

  static PayslipObjectStruct fromMap(Map<String, dynamic> data) =>
      PayslipObjectStruct(
        filename: data['filename'] as String?,
        payrollYear: data['payrollYear'] as String?,
        payrollPeriod: data['payrollPeriod'] as String?,
        fileLink: data['fileLink'] as String?,
        friendlyDescription: data['friendlyDescription'] as String?,
      );

  static PayslipObjectStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PayslipObjectStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'filename': _filename,
        'payrollYear': _payrollYear,
        'payrollPeriod': _payrollPeriod,
        'fileLink': _fileLink,
        'friendlyDescription': _friendlyDescription,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'filename': serializeParam(
          _filename,
          ParamType.String,
        ),
        'payrollYear': serializeParam(
          _payrollYear,
          ParamType.String,
        ),
        'payrollPeriod': serializeParam(
          _payrollPeriod,
          ParamType.String,
        ),
        'fileLink': serializeParam(
          _fileLink,
          ParamType.String,
        ),
        'friendlyDescription': serializeParam(
          _friendlyDescription,
          ParamType.String,
        ),
      }.withoutNulls;

  static PayslipObjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayslipObjectStruct(
        filename: deserializeParam(
          data['filename'],
          ParamType.String,
          false,
        ),
        payrollYear: deserializeParam(
          data['payrollYear'],
          ParamType.String,
          false,
        ),
        payrollPeriod: deserializeParam(
          data['payrollPeriod'],
          ParamType.String,
          false,
        ),
        fileLink: deserializeParam(
          data['fileLink'],
          ParamType.String,
          false,
        ),
        friendlyDescription: deserializeParam(
          data['friendlyDescription'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PayslipObjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayslipObjectStruct &&
        filename == other.filename &&
        payrollYear == other.payrollYear &&
        payrollPeriod == other.payrollPeriod &&
        fileLink == other.fileLink &&
        friendlyDescription == other.friendlyDescription;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [filename, payrollYear, payrollPeriod, fileLink, friendlyDescription]);
}

PayslipObjectStruct createPayslipObjectStruct({
  String? filename,
  String? payrollYear,
  String? payrollPeriod,
  String? fileLink,
  String? friendlyDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PayslipObjectStruct(
      filename: filename,
      payrollYear: payrollYear,
      payrollPeriod: payrollPeriod,
      fileLink: fileLink,
      friendlyDescription: friendlyDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PayslipObjectStruct? updatePayslipObjectStruct(
  PayslipObjectStruct? payslipObject, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    payslipObject
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPayslipObjectStructData(
  Map<String, dynamic> firestoreData,
  PayslipObjectStruct? payslipObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (payslipObject == null) {
    return;
  }
  if (payslipObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && payslipObject.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final payslipObjectData =
      getPayslipObjectFirestoreData(payslipObject, forFieldValue);
  final nestedData =
      payslipObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = payslipObject.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPayslipObjectFirestoreData(
  PayslipObjectStruct? payslipObject, [
  bool forFieldValue = false,
]) {
  if (payslipObject == null) {
    return {};
  }
  final firestoreData = mapToFirestore(payslipObject.toMap());

  // Add any Firestore field values
  payslipObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPayslipObjectListFirestoreData(
  List<PayslipObjectStruct>? payslipObjects,
) =>
    payslipObjects
        ?.map((e) => getPayslipObjectFirestoreData(e, true))
        .toList() ??
    [];
