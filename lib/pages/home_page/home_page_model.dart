import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/bottom_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Authentication)] action in HomePage widget.
  ApiCallResponse? apiResultzcx;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
