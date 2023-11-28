import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/components/long_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'h_r_services_page_model.dart';
export 'h_r_services_page_model.dart';

class HRServicesPageWidget extends StatefulWidget {
  const HRServicesPageWidget({Key? key}) : super(key: key);

  @override
  _HRServicesPageWidgetState createState() => _HRServicesPageWidgetState();
}

class _HRServicesPageWidgetState extends State<HRServicesPageWidget> {
  late HRServicesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HRServicesPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).appBarColour,
            automaticallyImplyLeading: false,
            actions: [],
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.customAppBarModel,
                updateCallback: () => setState(() {}),
                child: CustomAppBarWidget(
                  title: 'Human Resources',
                ),
              ),
              wrapWithModel(
                model: _model.bannerSliderModel,
                updateCallback: () => setState(() {}),
                child: BannerSliderWidget(
                  searchColour: FlutterFlowTheme.of(context).textFieldIcon,
                  iconColour: FlutterFlowTheme.of(context).textFieldIcon,
                  borderColour: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'InfoPage',
                      queryParameters: {
                        'heading': serializeParam(
                          'Fidelity Training',
                          ParamType.String,
                        ),
                        'description': serializeParam(
                          'As a pioneer in the security training and development market, Fidelity Services Group was one of the first companies in the country to establish and professionalise the first learnership programme for security officers.',
                          ParamType.String,
                        ),
                        'link': serializeParam(
                          'https://fidelity-services.com/training-and-development/',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.longMenuItemModel,
                    updateCallback: () => setState(() {}),
                    child: LongMenuItemWidget(
                      icon: Icon(
                        FFIcons.knewAppIconsTraining,
                        color: FlutterFlowTheme.of(context).justBlack,
                        size: 28.0,
                      ),
                      title: 'Training and Development',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
