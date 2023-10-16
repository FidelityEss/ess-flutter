import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'compliments_page_model.dart';
export 'compliments_page_model.dart';

class ComplimentsPageWidget extends StatefulWidget {
  const ComplimentsPageWidget({Key? key}) : super(key: key);

  @override
  _ComplimentsPageWidgetState createState() => _ComplimentsPageWidgetState();
}

class _ComplimentsPageWidgetState extends State<ComplimentsPageWidget> {
  late ComplimentsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComplimentsPageModel());

    _model.nameController1 ??= TextEditingController();
    _model.nameController2 ??= TextEditingController();
    _model.nameController3 ??= TextEditingController();
    _model.nameController4 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.customAppBarModel,
                updateCallback: () => setState(() {}),
                child: CustomAppBarWidget(
                  title: 'Compliments',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                child: LinearPercentIndicator(
                  percent: 0.3,
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  lineHeight: 5.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).alternate,
                  barRadius: Radius.circular(10.0),
                  padding: EdgeInsets.zero,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 64.0, 0.0, 0.0),
                child: Text(
                  'Send us a compliment',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 8.0, 32.0, 0.0),
                child: Text(
                  'Hi there! We look forward to hearing back you. Your input is highly valued and will go all the way to our execs. Thank you for taking time out of your day to give us a compliment!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).textFieldIcon,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                child: TextFormField(
                  controller: _model.nameController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Name',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: FlutterFlowTheme.of(context).textFieldIcon,
                      size: 16.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                  validator:
                      _model.nameController1Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                child: TextFormField(
                  controller: _model.nameController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Surname',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Surname',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: FlutterFlowTheme.of(context).textFieldIcon,
                      size: 16.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                  validator:
                      _model.nameController2Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                child: TextFormField(
                  controller: _model.nameController3,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Email Address',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: FlutterFlowTheme.of(context).textFieldIcon,
                      size: 16.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                  validator:
                      _model.nameController3Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                child: TextFormField(
                  controller: _model.nameController4,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall,
                    hintText: 'Phone Number',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_rounded,
                      color: FlutterFlowTheme.of(context).textFieldIcon,
                      size: 16.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall,
                  validator:
                      _model.nameController4Validator.asValidator(context),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 32.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'ComplimentsTwo',
                      queryParameters: {
                        'name': serializeParam(
                          _model.nameController1.text,
                          ParamType.String,
                        ),
                        'surname': serializeParam(
                          _model.nameController2.text,
                          ParamType.String,
                        ),
                        'email': serializeParam(
                          _model.nameController3.text,
                          ParamType.String,
                        ),
                        'phone': serializeParam(
                          _model.nameController4.text,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Next',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).justWhite,
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
            ],
          ),
        ),
      ),
    );
  }
}
