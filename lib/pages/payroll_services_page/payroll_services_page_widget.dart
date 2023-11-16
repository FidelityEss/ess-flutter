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
import 'payroll_services_page_model.dart';
export 'payroll_services_page_model.dart';

class PayrollServicesPageWidget extends StatefulWidget {
  const PayrollServicesPageWidget({Key? key}) : super(key: key);

  @override
  _PayrollServicesPageWidgetState createState() =>
      _PayrollServicesPageWidgetState();
}

class _PayrollServicesPageWidgetState extends State<PayrollServicesPageWidget> {
  late PayrollServicesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayrollServicesPageModel());

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
                  title: 'Payroll Services',
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
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('PayslipTaxListPage');
                  },
                  child: wrapWithModel(
                    model: _model.longMenuItemModel1,
                    updateCallback: () => setState(() {}),
                    child: LongMenuItemWidget(
                      icon: Icon(
                        FFIcons.knewAppIconsPayrollServices,
                        color: FlutterFlowTheme.of(context).justBlack,
                        size: 28.0,
                      ),
                      title: 'Payslips',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('TaxCertsListPage');
                  },
                  child: wrapWithModel(
                    model: _model.longMenuItemModel2,
                    updateCallback: () => setState(() {}),
                    child: LongMenuItemWidget(
                      icon: Icon(
                        FFIcons.ktax,
                        color: FlutterFlowTheme.of(context).justBlack,
                        size: 24.0,
                      ),
                      title: 'Tax Certificates',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('TimeAndAttendancePage');
                  },
                  child: wrapWithModel(
                    model: _model.longMenuItemModel3,
                    updateCallback: () => setState(() {}),
                    child: LongMenuItemWidget(
                      icon: Icon(
                        FFIcons.knewAppIconsTimeAttendance,
                        color: FlutterFlowTheme.of(context).justBlack,
                        size: 28.0,
                      ),
                      title: 'Time & Attendance',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('LogAQueryPage');
                  },
                  child: wrapWithModel(
                    model: _model.longMenuItemModel4,
                    updateCallback: () => setState(() {}),
                    child: LongMenuItemWidget(
                      icon: Icon(
                        FFIcons.knewAppIconsLogAQuery,
                        color: FlutterFlowTheme.of(context).justBlack,
                        size: 28.0,
                      ),
                      title: 'Queries',
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
