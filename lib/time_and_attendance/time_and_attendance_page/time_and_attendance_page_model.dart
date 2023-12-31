import '/backend/api_requests/api_calls.dart';
import '/components/banner_slider_no_search_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'time_and_attendance_page_widget.dart' show TimeAndAttendancePageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TimeAndAttendancePageModel
    extends FlutterFlowModel<TimeAndAttendancePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  // Model for BannerSliderNoSearch component.
  late BannerSliderNoSearchModel bannerSliderNoSearchModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
    bannerSliderNoSearchModel =
        createModel(context, () => BannerSliderNoSearchModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    bannerSliderNoSearchModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
