// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayslipsStruct extends FFFirebaseStruct {
  PayslipsStruct({
    String? filename,
    int? payrollYear,
    int? payrollPeriod,
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
  int? _payrollYear;
  int get payrollYear => _payrollYear ?? 0;
  set payrollYear(int? val) => _payrollYear = val;
  void incrementPayrollYear(int amount) => _payrollYear = payrollYear + amount;
  bool hasPayrollYear() => _payrollYear != null;

  // "payrollPeriod" field.
  int? _payrollPeriod;
  int get payrollPeriod => _payrollPeriod ?? 0;
  set payrollPeriod(int? val) => _payrollPeriod = val;
  void incrementPayrollPeriod(int amount) =>
      _payrollPeriod = payrollPeriod + amount;
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

  static PayslipsStruct fromMap(Map<String, dynamic> data) => PayslipsStruct(
        filename: data['filename'] as String?,
        payrollYear: castToType<int>(data['payrollYear']),
        payrollPeriod: castToType<int>(data['payrollPeriod']),
        fileLink: data['fileLink'] as String?,
        friendlyDescription: data['friendlyDescription'] as String?,
      );

  static PayslipsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PayslipsStruct.fromMap(data) : null;

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
          ParamType.int,
        ),
        'payrollPeriod': serializeParam(
          _payrollPeriod,
          ParamType.int,
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

  static PayslipsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayslipsStruct(
        filename: deserializeParam(
          data['filename'],
          ParamType.String,
          false,
        ),
        payrollYear: deserializeParam(
          data['payrollYear'],
          ParamType.int,
          false,
        ),
        payrollPeriod: deserializeParam(
          data['payrollPeriod'],
          ParamType.int,
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
  String toString() => 'PayslipsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PayslipsStruct &&
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

PayslipsStruct createPayslipsStruct({
  String? filename,
  int? payrollYear,
  int? payrollPeriod,
  String? fileLink,
  String? friendlyDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PayslipsStruct(
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

PayslipsStruct? updatePayslipsStruct(
  PayslipsStruct? payslips, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    payslips
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPayslipsStructData(
  Map<String, dynamic> firestoreData,
  PayslipsStruct? payslips,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (payslips == null) {
    return;
  }
  if (payslips.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && payslips.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final payslipsData = getPayslipsFirestoreData(payslips, forFieldValue);
  final nestedData = payslipsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = payslips.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPayslipsFirestoreData(
  PayslipsStruct? payslips, [
  bool forFieldValue = false,
]) {
  if (payslips == null) {
    return {};
  }
  final firestoreData = mapToFirestore(payslips.toMap());

  // Add any Firestore field values
  payslips.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPayslipsListFirestoreData(
  List<PayslipsStruct>? payslipss,
) =>
    payslipss?.map((e) => getPayslipsFirestoreData(e, true)).toList() ?? [];
