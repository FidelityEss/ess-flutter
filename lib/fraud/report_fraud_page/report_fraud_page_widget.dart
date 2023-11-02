import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'report_fraud_page_model.dart';
export 'report_fraud_page_model.dart';

class ReportFraudPageWidget extends StatefulWidget {
  const ReportFraudPageWidget({Key? key}) : super(key: key);

  @override
  _ReportFraudPageWidgetState createState() => _ReportFraudPageWidgetState();
}

class _ReportFraudPageWidgetState extends State<ReportFraudPageWidget> {
  late ReportFraudPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportFraudPageModel());

    _model.titleController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();
    _model.messageController ??= TextEditingController();
    _model.messageFocusNode ??= FocusNode();
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.customAppBarModel,
                    updateCallback: () => setState(() {}),
                    child: CustomAppBarWidget(
                      title: 'Report Fraud',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.bannerSliderModel,
                    updateCallback: () => setState(() {}),
                    child: BannerSliderWidget(),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Fraud Form',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.typeValueController ??=
                          FormFieldController<String>(null),
                      options: [
                        'Embezzlement',
                        'Invoice Fraud',
                        'Expense Account Abuse',
                        'Kickbacks and Bribes',
                        'Financial Statement Manipulation',
                        'Insider Trading',
                        'Payroll Fraud',
                        'Inventory Theft or Fraud',
                        'Phishing and Data Breach Scams',
                        'Contract Fraud',
                        'Supplier Collusion',
                        'Time and Attendance Fraud',
                        'Fraudulent Marketing Practices',
                        'Theft of company assets',
                        'Timesheet fraud (Payroll)',
                        'Fuel theft',
                        'Bribery',
                        'Identity fraud',
                        'Defrauding of suppliers and customers by our employees'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.typeValue = val),
                      width: double.infinity,
                      height: 50.0,
                      textStyle: FlutterFlowTheme.of(context).displayLarge,
                      hintText: 'Fraud Type',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).black,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 5.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.priorityValueController ??=
                          FormFieldController<String>(null),
                      options: ['High', 'Medium', 'Low'],
                      onChanged: (val) =>
                          setState(() => _model.priorityValue = val),
                      width: double.infinity,
                      height: 50.0,
                      textStyle: FlutterFlowTheme.of(context).displayLarge,
                      hintText: 'Priority',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).black,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 5.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: TextFormField(
                      controller: _model.titleController,
                      focusNode: _model.titleFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: FlutterFlowTheme.of(context).displayLarge,
                        hintStyle: FlutterFlowTheme.of(context).displayLarge,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
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
                      ),
                      style: FlutterFlowTheme.of(context).displayLarge,
                      validator:
                          _model.titleControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: TextFormField(
                      controller: _model.messageController,
                      focusNode: _model.messageFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Message',
                        labelStyle: FlutterFlowTheme.of(context).displayLarge,
                        hintStyle: FlutterFlowTheme.of(context).displayLarge,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
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
                      ),
                      style: FlutterFlowTheme.of(context).displayLarge,
                      validator: _model.messageControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey:
                          'AIzaSyDPvLXvrnoKFiX_-WCBaw3t65TwVKGMUlQ',
                      androidGoogleMapsApiKey:
                          'AIzaSyDp54F2JTJPsHH7ln0yzhnKi2PbY4BhQh0',
                      webGoogleMapsApiKey:
                          'AIzaSyAgmTxJWZ48yDLW4KK3nUeYU5ALGBwzA6E',
                      onSelect: (place) async {
                        setState(() => _model.placePickerValue = place);
                      },
                      defaultText: 'Select Location',
                      icon: Icon(
                        Icons.place,
                        color: FlutterFlowTheme.of(context).info,
                        size: 16.0,
                      ),
                      buttonOptions: FFButtonOptions(
                        width: double.infinity,
                        height: 45.0,
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).justWhite,
                                  fontWeight: FontWeight.w600,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        if (_model.typeValue == null) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Select Fraud Type'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          return;
                        }
                        if (_model.priorityValue == null) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Select Priority'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          return;
                        }
                        if (_model.placePickerValue == FFPlace()) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Select Location'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          return;
                        }

                        await FraudIncidentsRecord.collection
                            .doc()
                            .set(createFraudIncidentsRecordData(
                              id: '${getCurrentTimestamp.microsecondsSinceEpoch.toString()}${random_data.randomString(
                                10,
                                10,
                                true,
                                true,
                                true,
                              )}',
                              userId: currentUserUid,
                              type: _model.typeValue,
                              priority: _model.priorityValue,
                              title: _model.titleController.text,
                              message: _model.messageController.text,
                              created: getCurrentTimestamp,
                              updated: getCurrentTimestamp,
                              assignee: 'No Assignee',
                              status: 'Logged',
                              userName: currentUserDisplayName,
                            ));
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Success'),
                              content: Text('Your query has been created.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        context.safePop();
                      },
                      text: 'Report Fraud',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 45.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).justWhite,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
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
        ),
      ),
    );
  }
}