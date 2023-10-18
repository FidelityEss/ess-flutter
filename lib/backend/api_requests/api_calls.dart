import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

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
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AuthenticationCall',
        'variables': {
          'employeeNumber': employeeNumber,
          'idNumber': idNumber,
          'cellphoneNumber': cellphoneNumber,
          'authToken': authToken,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    String? fromDate = '',
    String? toDate = '',
    String? authToken = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetEmployeePayslipsCall',
        'variables': {
          'fromDate': fromDate,
          'toDate': toDate,
          'authToken': authToken,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PayslipCall',
        'variables': {
          'period': period,
          'authToken': authToken,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
