import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FESS API Group Code

class FessApiGroup {
  static String baseUrl =
      'https://6j2o2o73d4li23ruy3au3lkktm0zoblr.lambda-url.af-south-1.on.aws/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [auth_token]',
    'api-key': 'c1e57890-a4ee-4354-ab59-53098d763963',
  };
  static AuthenticationCall authenticationCall = AuthenticationCall();
  static GetEmployeePayslipsCall getEmployeePayslipsCall =
      GetEmployeePayslipsCall();
  static PayslipCall payslipCall = PayslipCall();
}

class AuthenticationCall {
  Future<ApiCallResponse> call({
    String? employeeNumber = '',
    String? idNumber = '',
    String? cellphoneNumber = '',
    String? authToken = '',
  }) {
    final ffApiRequestBody = '''
{
  "employeeNumber": "${employeeNumber}",
  "idNumber": "${idNumber}",
  "cellphoneNumber": "${cellphoneNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authentication',
      apiUrl: '${FessApiGroup.baseUrl}/Authentication/Authenticate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'api-key': 'c1e57890-a4ee-4354-ab59-53098d763963',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.firstName''',
      );
  dynamic surname(dynamic response) => getJsonField(
        response,
        r'''$.surname''',
      );
}

class GetEmployeePayslipsCall {
  Future<ApiCallResponse> call({
    String? fromDate = '2023-07-01T00:00:00',
    String? toDate = '2023-10-16T00:00:00',
    String? authToken = '',
  }) {
    final ffApiRequestBody = '''
{
  "fromDate": "${fromDate}",
  "toDate": "${toDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Employee Payslips',
      apiUrl: '${FessApiGroup.baseUrl}/Payroll/GetEmployeePayslips',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'api-key': 'c1e57890-a4ee-4354-ab59-53098d763963',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic fileName(dynamic response) => getJsonField(
        response,
        r'''$[*].filename''',
        true,
      );
  dynamic payrollYear(dynamic response) => getJsonField(
        response,
        r'''$[*].payrollYear''',
        true,
      );
  dynamic payrollPeriod(dynamic response) => getJsonField(
        response,
        r'''$[*].payrollPeriod''',
        true,
      );
  dynamic fileLink(dynamic response) => getJsonField(
        response,
        r'''$[*].fileLink''',
        true,
      );
  dynamic friendlyDescription(dynamic response) => getJsonField(
        response,
        r'''$[*].friendlyDescription''',
        true,
      );
}

class PayslipCall {
  Future<ApiCallResponse> call({
    String? period = '',
    String? authToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Payslip',
      apiUrl: '${FessApiGroup.baseUrl}/Payroll/PayslipPdf',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'api-key': 'c1e57890-a4ee-4354-ab59-53098d763963',
      },
      params: {
        'period': period,
        'token': authToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End FESS API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}