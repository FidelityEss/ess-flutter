import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_in_page_widget.dart' show SignInPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SignInPageModel extends FlutterFlowModel<SignInPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmployeeNumber widget.
  FocusNode? employeeNumberFocusNode;
  TextEditingController? employeeNumberController;
  String? Function(BuildContext, String?)? employeeNumberControllerValidator;
  String? _employeeNumberControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for IDNumber widget.
  FocusNode? iDNumberFocusNode;
  TextEditingController? iDNumberController;
  String? Function(BuildContext, String?)? iDNumberControllerValidator;
  String? _iDNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 13) {
      return 'Maximum 13 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Authentication)] action in Button widget.
  ApiCallResponse? authResponse;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    employeeNumberControllerValidator = _employeeNumberControllerValidator;
    iDNumberControllerValidator = _iDNumberControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    employeeNumberFocusNode?.dispose();
    employeeNumberController?.dispose();

    iDNumberFocusNode?.dispose();
    iDNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
