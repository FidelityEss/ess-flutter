import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/banner_slider_widget.dart';
import '/components/bottom_nav_widget.dart';
import '/components/menu_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool profileRefreshing = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BannerSlider component.
  late BannerSliderModel bannerSliderModel;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel1;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel2;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel3;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel4;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel5;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel6;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel7;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel8;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel9;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel10;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel11;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel12;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel13;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel14;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel15;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel16;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel17;
  // Model for MenuIcon component.
  late MenuIconModel menuIconModel18;
  // Model for BottomNav component.
  late BottomNavModel bottomNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bannerSliderModel = createModel(context, () => BannerSliderModel());
    menuIconModel1 = createModel(context, () => MenuIconModel());
    menuIconModel2 = createModel(context, () => MenuIconModel());
    menuIconModel3 = createModel(context, () => MenuIconModel());
    menuIconModel4 = createModel(context, () => MenuIconModel());
    menuIconModel5 = createModel(context, () => MenuIconModel());
    menuIconModel6 = createModel(context, () => MenuIconModel());
    menuIconModel7 = createModel(context, () => MenuIconModel());
    menuIconModel8 = createModel(context, () => MenuIconModel());
    menuIconModel9 = createModel(context, () => MenuIconModel());
    menuIconModel10 = createModel(context, () => MenuIconModel());
    menuIconModel11 = createModel(context, () => MenuIconModel());
    menuIconModel12 = createModel(context, () => MenuIconModel());
    menuIconModel13 = createModel(context, () => MenuIconModel());
    menuIconModel14 = createModel(context, () => MenuIconModel());
    menuIconModel15 = createModel(context, () => MenuIconModel());
    menuIconModel16 = createModel(context, () => MenuIconModel());
    menuIconModel17 = createModel(context, () => MenuIconModel());
    menuIconModel18 = createModel(context, () => MenuIconModel());
    bottomNavModel = createModel(context, () => BottomNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bannerSliderModel.dispose();
    menuIconModel1.dispose();
    menuIconModel2.dispose();
    menuIconModel3.dispose();
    menuIconModel4.dispose();
    menuIconModel5.dispose();
    menuIconModel6.dispose();
    menuIconModel7.dispose();
    menuIconModel8.dispose();
    menuIconModel9.dispose();
    menuIconModel10.dispose();
    menuIconModel11.dispose();
    menuIconModel12.dispose();
    menuIconModel13.dispose();
    menuIconModel14.dispose();
    menuIconModel15.dispose();
    menuIconModel16.dispose();
    menuIconModel17.dispose();
    menuIconModel18.dispose();
    bottomNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
