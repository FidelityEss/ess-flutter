import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/components/long_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'payroll_services_page_widget.dart' show PayrollServicesPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PayrollServicesPageModel
    extends FlutterFlowModel<PayrollServicesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  // Model for BannerSlider component.
  late BannerSliderModel bannerSliderModel;
  // Model for LongMenuItem component.
  late LongMenuItemModel longMenuItemModel1;
  // Model for LongMenuItem component.
  late LongMenuItemModel longMenuItemModel2;
  // Model for LongMenuItem component.
  late LongMenuItemModel longMenuItemModel3;
  // Model for LongMenuItem component.
  late LongMenuItemModel longMenuItemModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
    bannerSliderModel = createModel(context, () => BannerSliderModel());
    longMenuItemModel1 = createModel(context, () => LongMenuItemModel());
    longMenuItemModel2 = createModel(context, () => LongMenuItemModel());
    longMenuItemModel3 = createModel(context, () => LongMenuItemModel());
    longMenuItemModel4 = createModel(context, () => LongMenuItemModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    bannerSliderModel.dispose();
    longMenuItemModel1.dispose();
    longMenuItemModel2.dispose();
    longMenuItemModel3.dispose();
    longMenuItemModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
