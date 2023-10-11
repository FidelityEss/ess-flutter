import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'compliments_page_widget.dart' show ComplimentsPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ComplimentsPageModel extends FlutterFlowModel<ComplimentsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  // State field(s) for Name widget.
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for Name widget.
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for Name widget.
  TextEditingController? nameController3;
  String? Function(BuildContext, String?)? nameController3Validator;
  // State field(s) for Name widget.
  TextEditingController? nameController4;
  String? Function(BuildContext, String?)? nameController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    nameController1?.dispose();
    nameController2?.dispose();
    nameController3?.dispose();
    nameController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
