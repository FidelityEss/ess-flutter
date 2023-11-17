import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/components/gold_download_button_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'coida_page_model.dart';
export 'coida_page_model.dart';

class CoidaPageWidget extends StatefulWidget {
  const CoidaPageWidget({Key? key}) : super(key: key);

  @override
  _CoidaPageWidgetState createState() => _CoidaPageWidgetState();
}

class _CoidaPageWidgetState extends State<CoidaPageWidget> {
  late CoidaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoidaPageModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.customAppBarModel,
                  updateCallback: () => setState(() {}),
                  child: CustomAppBarWidget(
                    title: 'COIDA',
                  ),
                ),
                wrapWithModel(
                  model: _model.bannerSliderModel,
                  updateCallback: () => setState(() {}),
                  child: BannerSliderWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: Text(
                    'We include the COID workflow that needs to be followed in the event of an IOD. Please ensure compliance and submit all relevant paperwork.',
                    style: FlutterFlowTheme.of(context).displayLarge,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'COID Process',
                            style: FlutterFlowTheme.of(context).displayMedium,
                          ),
                          Stack(
                            children: [
                              if (!_model.showCoidProcess)
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        _model.showCoidProcess = true;
                                      });
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.chevronDown,
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldIcon,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                              if (_model.showCoidProcess)
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        _model.showCoidProcess = false;
                                      });
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.chevronUp,
                                      color: FlutterFlowTheme.of(context)
                                          .textFieldIcon,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (_model.showCoidProcess)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: FlutterFlowPdfViewer(
                      networkPath:
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/assets%2FCOID%20Process.pdf?alt=media&token=781ede58-47cf-4510-915c-1197ff67e397',
                      height: 520.0,
                      horizontalScroll: false,
                    ),
                  ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/assets%2FCOIDA.pdf?alt=media&token=59f2d1ae-5644-4e53-8278-fa41bbe2e39c');
                    },
                    text: 'Download COID Process',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 45.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 32.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: Text(
                    'FESS Coida Downloadable Documents',
                    style: FlutterFlowTheme.of(context).displayMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20A%20-%20Incident%20Notification.docx?alt=media&token=3e6c0d2a-daa3-4a8f-8c83-ea8a1f665477');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel1,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Incident Notification',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20B%20-%20Employer\'s%20Report.docx?alt=media&token=06e2840f-4668-4803-a8c8-b584c5a00532');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel2,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Employer\'s Report',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20C%20-%20Transport%20Questionnaire.docx?alt=media&token=21fc2786-4bb7-41fe-93e5-13f4e56a16f4');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel3,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Transport Questionnaire',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20D%20-%20Assault%20Report.docx?alt=media&token=6650ae66-845e-4154-a04b-e464503773e3');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel4,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Assault Report',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20E%20-%20Gunshot%20Report.docx?alt=media&token=4aac5517-7566-45d3-bd4c-197e3aa0c1fd');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel5,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Gunshot Report',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20F%20-%20Delay%20Report.docx?alt=media&token=99f353e5-d542-411c-b349-ab9958143036');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel6,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Delay Report',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20G%20-%20Slip%20%26%20Fall%20Questionnaire.docx?alt=media&token=95565d29-a970-4552-8d08-d520edb870f8');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel7,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Slip & Fall Questionnaire',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 32.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await launchURL(
                          'https://firebasestorage.googleapis.com/v0/b/fess-a6f94.appspot.com/o/coid_docs%2FAppendix%20H%20-%20Hand%20Injury%20Questionnaire.docx?alt=media&token=b9b35b0d-0baf-4046-ace4-e9c264ae533c');
                    },
                    child: wrapWithModel(
                      model: _model.goldDownloadButtonModel8,
                      updateCallback: () => setState(() {}),
                      child: GoldDownloadButtonWidget(
                        title: 'Hand Injury Questionnaire',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
