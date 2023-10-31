import '/auth/firebase_auth/auth_util.dart';
import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'umsuka_wemali_apply_page_widget.dart' show UmsukaWemaliApplyPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UmsukaWemaliApplyPageModel
    extends FlutterFlowModel<UmsukaWemaliApplyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  // Model for BannerSlider component.
  late BannerSliderModel bannerSliderModel;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode1;
  TextEditingController? nameController1;
  String? Function(BuildContext, String?)? nameController1Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode2;
  TextEditingController? nameController2;
  String? Function(BuildContext, String?)? nameController2Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode3;
  TextEditingController? nameController3;
  String? Function(BuildContext, String?)? nameController3Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode4;
  TextEditingController? nameController4;
  String? Function(BuildContext, String?)? nameController4Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode5;
  TextEditingController? nameController5;
  String? Function(BuildContext, String?)? nameController5Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode6;
  TextEditingController? nameController6;
  String? Function(BuildContext, String?)? nameController6Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode7;
  TextEditingController? nameController7;
  String? Function(BuildContext, String?)? nameController7Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode8;
  TextEditingController? nameController8;
  String? Function(BuildContext, String?)? nameController8Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
    bannerSliderModel = createModel(context, () => BannerSliderModel());
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    bannerSliderModel.dispose();
    nameFocusNode1?.dispose();
    nameController1?.dispose();

    nameFocusNode2?.dispose();
    nameController2?.dispose();

    nameFocusNode3?.dispose();
    nameController3?.dispose();

    nameFocusNode4?.dispose();
    nameController4?.dispose();

    nameFocusNode5?.dispose();
    nameController5?.dispose();

    nameFocusNode6?.dispose();
    nameController6?.dispose();

    nameFocusNode7?.dispose();
    nameController7?.dispose();

    nameFocusNode8?.dispose();
    nameController8?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
