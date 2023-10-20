import '/backend/api_requests/api_calls.dart';
import '/components/detailed_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'payslip_tax_list_page_widget.dart' show PayslipTaxListPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PayslipTaxListPageModel
    extends FlutterFlowModel<PayslipTaxListPageWidget> {
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
