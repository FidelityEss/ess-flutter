import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/components/gold_download_button_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'coida_page_widget.dart' show CoidaPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CoidaPageModel extends FlutterFlowModel<CoidaPageWidget> {
  ///  Local state fields for this page.

  bool showCoidProcess = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  // Model for BannerSlider component.
  late BannerSliderModel bannerSliderModel;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel1;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel2;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel3;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel4;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel5;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel6;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel7;
  // Model for GoldDownloadButton component.
  late GoldDownloadButtonModel goldDownloadButtonModel8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
    bannerSliderModel = createModel(context, () => BannerSliderModel());
    goldDownloadButtonModel1 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel2 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel3 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel4 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel5 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel6 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel7 =
        createModel(context, () => GoldDownloadButtonModel());
    goldDownloadButtonModel8 =
        createModel(context, () => GoldDownloadButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    bannerSliderModel.dispose();
    goldDownloadButtonModel1.dispose();
    goldDownloadButtonModel2.dispose();
    goldDownloadButtonModel3.dispose();
    goldDownloadButtonModel4.dispose();
    goldDownloadButtonModel5.dispose();
    goldDownloadButtonModel6.dispose();
    goldDownloadButtonModel7.dispose();
    goldDownloadButtonModel8.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
