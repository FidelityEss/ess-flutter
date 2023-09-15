import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for IDNumber widget.
  TextEditingController? iDNumberController;
  String? Function(BuildContext, String?)? iDNumberControllerValidator;
  // State field(s) for EmployeeNumber widget.
  TextEditingController? employeeNumberController;
  String? Function(BuildContext, String?)? employeeNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    iDNumberController?.dispose();
    employeeNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
