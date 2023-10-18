import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'SignInPage': ParameterData.none(),
  'VerificationPage': (data) async => ParameterData(
        allParams: {
          'en': getParameter<String>(data, 'en'),
          'eid': getParameter<String>(data, 'eid'),
          'firstName': getParameter<String>(data, 'firstName'),
          'lastName': getParameter<String>(data, 'lastName'),
        },
      ),
  'PayslipTaxListPage': ParameterData.none(),
  'PayslipTaxPage': (data) async => ParameterData(
        allParams: {
          'fileLink': getParameter<String>(data, 'fileLink'),
        },
      ),
  'TimeAndAttendancePage': ParameterData.none(),
  'FidelityCaresPage': ParameterData.none(),
  'LogAQueryPage': ParameterData.none(),
  'ReportIncidentPage': ParameterData.none(),
  'EventsPage': ParameterData.none(),
  'PrivacyPolicyPage': ParameterData.none(),
  'TermsAndConditionsPage': ParameterData.none(),
  'ProfilePage': ParameterData.none(),
  'ManageProfile': ParameterData.none(),
  'MessagesBox': ParameterData.none(),
  'IncidentsPage': ParameterData.none(),
  'IncidentDetailsPage': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
  'EventDetailsPage': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
  'MessageDetailsPage': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
  'QueriesPage': ParameterData.none(),
  'QueryDetailsPage': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
  'ChatBotPage': ParameterData.none(),
  'IntroSlider1': ParameterData.none(),
  'IntroSlider2': ParameterData.none(),
  'IntroSlider3': ParameterData.none(),
  'VanciesPage': ParameterData.none(),
  'VacanciesDetailsPage': (data) async => ParameterData(
        allParams: {
          'id': getParameter<String>(data, 'id'),
        },
      ),
  'InfoPage': (data) async => ParameterData(
        allParams: {
          'title': getParameter<String>(data, 'title'),
          'heading': getParameter<String>(data, 'heading'),
          'description': getParameter<String>(data, 'description'),
          'link': getParameter<String>(data, 'link'),
        },
      ),
  'ComplimentsPage': ParameterData.none(),
  'ComplimentsTwo': (data) async => ParameterData(
        allParams: {
          'name': getParameter<String>(data, 'name'),
          'surname': getParameter<String>(data, 'surname'),
          'email': getParameter<String>(data, 'email'),
          'phone': getParameter<String>(data, 'phone'),
        },
      ),
  'ComplimentSubmittedPage': ParameterData.none(),
  'UpdateProfilePage': (data) async => ParameterData(
        allParams: {
          'en': getParameter<String>(data, 'en'),
          'eid': getParameter<String>(data, 'eid'),
          'firstName': getParameter<String>(data, 'firstName'),
          'surname': getParameter<String>(data, 'surname'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
