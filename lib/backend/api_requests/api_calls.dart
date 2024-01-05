import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
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
  static GetEmployeeTimeCall getEmployeeTimeCall = GetEmployeeTimeCall();
  static CreatePayrollQueryCall createPayrollQueryCall =
      CreatePayrollQueryCall();
  static GetEmployeeTaxCertificatesCall getEmployeeTaxCertificatesCall =
      GetEmployeeTaxCertificatesCall();
  static PayrollOrderCategoriesCall payrollOrderCategoriesCall =
      PayrollOrderCategoriesCall();
  static MailAPICall mailAPICall = MailAPICall();
}

class AuthenticationCall {
  Future<ApiCallResponse> call({
    String? employeeNumber = '',
    String? idNumber = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "employeeNumber": "${employeeNumber}",
  "idNumber": "${idNumber}"
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
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? surname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.surname''',
      ));
  String? cellphoneNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cellphoneNumber''',
      ));
}

class GetEmployeePayslipsCall {
  Future<ApiCallResponse> call({
    String? fromDate = '2023-07-01T00:00:00',
    String? toDate = '2023-10-16T00:00:00',
    String? authToken = '',
  }) async {
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
      alwaysAllowBody: false,
    );
  }

  List<String>? fileName(dynamic response) => (getJsonField(
        response,
        r'''$[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? payrollYear(dynamic response) => (getJsonField(
        response,
        r'''$[:].payrollYear''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? payrollPeriod(dynamic response) => (getJsonField(
        response,
        r'''$[:].payrollPeriod''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? fileLink(dynamic response) => (getJsonField(
        response,
        r'''$[:].fileLink''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? friendlyDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].friendlyDescription''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? arrayFileName(dynamic response) => (getJsonField(
        response,
        r'''$..filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PayslipCall {
  Future<ApiCallResponse> call({
    String? period = '',
    String? authToken = '',
  }) async {
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
      alwaysAllowBody: false,
    );
  }
}

class GetEmployeeTimeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Employee Time',
      apiUrl: '${FessApiGroup.baseUrl}/Payroll/GetTimeAndAttendance',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'api-key': 'c1e57890-a4ee-4354-ab59-53098d763963',
      },
      params: {
        'token': authToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePayrollQueryCall {
  Future<ApiCallResponse> call({
    String? description = '',
    String? fcmToken = '',
    List<String>? fileUrlsList,
    int? payrollOrderCategoryId,
    String? authToken = '',
  }) async {
    final fileUrls = _serializeList(fileUrlsList);

    final ffApiRequestBody = '''
{
  "description": "${description}",
  "FCMToken": "${fcmToken}",
  "FileUrls": ${fileUrls},
  "PayrollOrderCategoryId": ${payrollOrderCategoryId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePayrollQuery',
      apiUrl: '${FessApiGroup.baseUrl}/Payroll/AddPayrollQuery',
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
      alwaysAllowBody: false,
    );
  }

  int? orderId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payrollOrderId''',
      ));
  String? orderNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payrollOrderNumber''',
      ));
}

class GetEmployeeTaxCertificatesCall {
  Future<ApiCallResponse> call({
    String? fromDate = '',
    String? toDate = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "fromDate": "${fromDate}",
  "toDate": "${toDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Employee Tax Certificates',
      apiUrl: '${FessApiGroup.baseUrl}/Payroll/GetEmployeeIRP5s',
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
      alwaysAllowBody: false,
    );
  }
}

class PayrollOrderCategoriesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PayrollOrderCategories',
      apiUrl: '${FessApiGroup.baseUrl}/Payroll/GetPayrollOrderCategories',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'api-key': 'c1e57890-a4ee-4354-ab59-53098d763963',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? iDs(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?;
  List? names(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?;
}

class MailAPICall {
  Future<ApiCallResponse> call({
    String? fromEmail = '',
    String? toEmail = '',
    String? subject = '',
    String? emailTemplateName = '',
    dynamic? fieldsJson,
    List<String>? attachmentUrlsList,
    String? authToken = '',
  }) async {
    final attachmentUrls = _serializeList(attachmentUrlsList);
    final fields = _serializeJson(fieldsJson);
    final ffApiRequestBody = '''
{
  "fromEmail": "${fromEmail}",
  "toEmail": "${toEmail}",
  "subject": "${subject}",
  "emailTemplateName": "${emailTemplateName}",
  "fields": ${fields},
  "attachmentUrls": ${attachmentUrls}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Mail API',
      apiUrl: '${FessApiGroup.baseUrl}/Mail/QueueTemplatedEmailRequest',
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
      alwaysAllowBody: false,
    );
  }
}

/// End FESS API Group Code

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? toEmail = '',
    String? subject = '',
    String? body = '',
    String? link = '',
  }) async {
    final ffApiRequestBody = '''
{
  "toEmail": "${toEmail}",
  "subject": "${subject}",
  "body": "${body}",
  "link": "${link}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendEmail',
      apiUrl: 'https://fidelityess.co.za/SendEmail2.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

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
