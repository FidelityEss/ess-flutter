import '/components/banner_slider_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'coida_page_widget.dart' show CoidaPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CoidaPageModel extends FlutterFlowModel<CoidaPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BannerSlider component.
  late BannerSliderModel bannerSliderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bannerSliderModel = createModel(context, () => BannerSliderModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bannerSliderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
