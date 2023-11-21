import '/backend/backend.dart';
import '/components/apply_bottom_sheet_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vacancies_details_page_widget.dart' show VacanciesDetailsPageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class VacanciesDetailsPageModel
    extends FlutterFlowModel<VacanciesDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
