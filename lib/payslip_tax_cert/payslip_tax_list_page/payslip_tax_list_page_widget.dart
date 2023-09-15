import '/components/detailed_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payslip_tax_list_page_model.dart';
export 'payslip_tax_list_page_model.dart';

class PayslipTaxListPageWidget extends StatefulWidget {
  const PayslipTaxListPageWidget({Key? key}) : super(key: key);

  @override
  _PayslipTaxListPageWidgetState createState() =>
      _PayslipTaxListPageWidgetState();
}

class _PayslipTaxListPageWidgetState extends State<PayslipTaxListPageWidget> {
  late PayslipTaxListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayslipTaxListPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).appBarColour,
            automaticallyImplyLeading: false,
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.detailedAppBarModel,
                updateCallback: () => setState(() {}),
                child: DetailedAppBarWidget(
                  title: 'Payslips',
                  heading: 'Payslips and Tax Certificates',
                  description:
                      'View all your payslips, tax certificates and much more. To get started with a function, please click on an item.',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                child: Text(
                  'Menu',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Payslip',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color:
                                        FlutterFlowTheme.of(context).justWhite,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 2.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Tax Certs',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: 100.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                              width: 2.0,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              'Other',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context).black,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 32.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Color(0x46B79E67),
                            width: 2.0,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.file,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 18.0,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'November Payslip',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        '1 November 2023',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color: FlutterFlowTheme.of(context).black,
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Color(0x46B79E67),
                            width: 2.0,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.file,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 18.0,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'October Payslip',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        '1 October 2023',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color: FlutterFlowTheme.of(context).black,
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Color(0x46B79E67),
                            width: 2.0,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.file,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 18.0,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'September Payslip',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        '1 September 2023',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color: FlutterFlowTheme.of(context).black,
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
