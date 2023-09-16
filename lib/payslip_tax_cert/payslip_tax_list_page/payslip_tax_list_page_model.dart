import '/components/detailed_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PayslipTaxListPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DetailedAppBar component.
  late DetailedAppBarModel detailedAppBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    detailedAppBarModel = createModel(context, () => DetailedAppBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    detailedAppBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}