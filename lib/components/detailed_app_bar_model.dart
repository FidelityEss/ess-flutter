import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detailed_app_bar_widget.dart' show DetailedAppBarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailedAppBarModel extends FlutterFlowModel<DetailedAppBarWidget> {
  ///  Local state fields for this component.

  String heading = '';

  String description = '';

  ///  State fields for stateful widgets in this component.

  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
  }

  void dispose() {
    customAppBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
