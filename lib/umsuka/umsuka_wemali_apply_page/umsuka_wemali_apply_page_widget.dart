import '/auth/firebase_auth/auth_util.dart';
import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'umsuka_wemali_apply_page_model.dart';
export 'umsuka_wemali_apply_page_model.dart';

class UmsukaWemaliApplyPageWidget extends StatefulWidget {
  const UmsukaWemaliApplyPageWidget({Key? key}) : super(key: key);

  @override
  _UmsukaWemaliApplyPageWidgetState createState() =>
      _UmsukaWemaliApplyPageWidgetState();
}

class _UmsukaWemaliApplyPageWidgetState
    extends State<UmsukaWemaliApplyPageWidget> {
  late UmsukaWemaliApplyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UmsukaWemaliApplyPageModel());

    _model.nameController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.firstName, ''));
    _model.nameFocusNode ??= FocusNode();

    _model.surnameController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.lastName, ''));
    _model.surnameFocusNode ??= FocusNode();

    _model.idController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.eid, ''));
    _model.idFocusNode ??= FocusNode();

    _model.companyNumberController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.ecd, ''));
    _model.companyNumberFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController(text: currentUserEmail);
    _model.emailFocusNode ??= FocusNode();

    _model.phoneController ??= TextEditingController(text: currentPhoneNumber);
    _model.phoneFocusNode ??= FocusNode();

    _model.loanAmountController ??= TextEditingController();
    _model.loanAmountFocusNode ??= FocusNode();

    _model.purposeController ??= TextEditingController();
    _model.purposeFocusNode ??= FocusNode();

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
                      title: 'Compliments',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.bannerSliderModel,
                    updateCallback: () => setState(() {}),
                    child: BannerSliderWidget(
                      searchColour: FlutterFlowTheme.of(context).textFieldIcon,
                      iconColour: FlutterFlowTheme.of(context).textFieldIcon,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Umsuka Wemali Application',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: _model.nameController,
                        focusNode: _model.nameFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                          hintText: 'Name',
                          hintStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
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
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        validator:
                            _model.nameControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: _model.surnameController,
                        focusNode: _model.surnameFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                          hintText: 'Surname',
                          hintStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
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
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        validator: _model.surnameControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: _model.idController,
                        focusNode: _model.idFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                          hintText: 'ID',
                          hintStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
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
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).textFieldIcon,
                            size: 16.0,
                          ),
                        ),
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        validator:
                            _model.idControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: _model.companyNumberController,
                        focusNode: _model.companyNumberFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                          hintText: 'Company Number',
                          hintStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
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
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).textFieldIcon,
                            size: 16.0,
                          ),
                        ),
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        validator: _model.companyNumberControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: TextFormField(
                      controller: _model.emailController,
                      focusNode: _model.emailFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        hintText: 'Email Address',
                        hintStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
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
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                      validator:
                          _model.emailControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => TextFormField(
                        controller: _model.phoneController,
                        focusNode: _model.phoneFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                          hintText: 'Phone Number',
                          hintStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .override(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
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
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        validator: _model.phoneControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: TextFormField(
                      controller: _model.loanAmountController,
                      focusNode: _model.loanAmountFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        hintText: 'Loan Amount',
                        hintStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
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
                          Icons.money_rounded,
                          color: FlutterFlowTheme.of(context).textFieldIcon,
                          size: 16.0,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                      keyboardType: TextInputType.number,
                      validator: _model.loanAmountControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: TextFormField(
                      controller: _model.purposeController,
                      focusNode: _model.purposeFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                        hintText: 'Loan Purpose',
                        hintStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
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
                          Icons.library_books_outlined,
                          color: FlutterFlowTheme.of(context).textFieldIcon,
                          size: 16.0,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).displayLarge.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                      validator: _model.purposeControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }

                        context.pushNamed('LoanSubmitted');
                      },
                      text: 'Next',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
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
        ),
      ),
    );
  }
}
