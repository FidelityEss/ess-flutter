// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PayslipsStruct extends FFFirebaseStruct {
  PayslipsStruct({
    List<PayslipObjectStruct>? payslipsList,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _payslipsList = payslipsList,
        super(firestoreUtilData);

  // "payslipsList" field.
  List<PayslipObjectStruct>? _payslipsList;
  List<PayslipObjectStruct> get payslipsList => _payslipsList ?? const [];
  set payslipsList(List<PayslipObjectStruct>? val) => _payslipsList = val;
  void updatePayslipsList(Function(List<PayslipObjectStruct>) updateFn) =>
      updateFn(_payslipsList ??= []);
  bool hasPayslipsList() => _payslipsList != null;

  static PayslipsStruct fromMap(Map<String, dynamic> data) => PayslipsStruct(
        payslipsList: getStructList(
          data['payslipsList'],
          PayslipObjectStruct.fromMap,
        ),
      );

  static PayslipsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PayslipsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'payslipsList': _payslipsList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'payslipsList': serializeParam(
          _payslipsList,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PayslipsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PayslipsStruct(
        payslipsList: deserializeStructParam<PayslipObjectStruct>(
          data['payslipsList'],
          ParamType.DataStruct,
          true,
          structBuilder: PayslipObjectStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PayslipsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PayslipsStruct &&
        listEquality.equals(payslipsList, other.payslipsList);
  }

  @override
  int get hashCode => const ListEquality().hash([payslipsList]);
}

PayslipsStruct createPayslipsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PayslipsStruct(
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
