import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'compliments_two_widget.dart' show ComplimentsTwoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComplimentsTwoModel extends FlutterFlowModel<ComplimentsTwoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for CustomAppBar component.
  late CustomAppBarModel customAppBarModel;
  // Model for BannerSlider component.
  late BannerSliderModel bannerSliderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageController;
  String? Function(BuildContext, String?)? messageControllerValidator;
  String? _messageControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customAppBarModel = createModel(context, () => CustomAppBarModel());
    bannerSliderModel = createModel(context, () => BannerSliderModel());
    messageControllerValidator = _messageControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    customAppBarModel.dispose();
    bannerSliderModel.dispose();
    messageFocusNode?.dispose();
    messageController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
