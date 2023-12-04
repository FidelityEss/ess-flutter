import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/banner_slider_widget.dart';
import '/components/bottom_nav_widget.dart';
import '/components/empty_menu_icon_widget.dart';
import '/components/menu_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await authManager.refreshUser();
      if (functions.hoursAgo(FFAppState().tokenUpdateTime) >= 3) {
        GoRouter.of(context).prepareAuthEvent();
        await authManager.signOut();
        GoRouter.of(context).clearRedirectLocation();

        context.pushNamedAuth('IntroSlider3', context.mounted);

        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return WebViewAware(
                child: AlertDialog(
              title: Text('Session Ended'),
              content: Text(
                  'Your previous session ended. Please login again to continue.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            ));
          },
        );
      } else {
        if ((currentUserEmail == null || currentUserEmail == '') ||
            (valueOrDefault(currentUserDocument?.firstName, '') == null ||
                valueOrDefault(currentUserDocument?.firstName, '') == '') ||
            (valueOrDefault(currentUserDocument?.lastName, '') == null ||
                valueOrDefault(currentUserDocument?.lastName, '') == '') ||
            (currentUserDisplayName == null || currentUserDisplayName == '')) {
          context.goNamedAuth('ManageProfile', context.mounted);
        } else {
          if (currentUserEmailVerified != true) {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return WebViewAware(
                    child: AlertDialog(
                  title: Text('Warning'),
                  content: Text(
                      'To continue using FESS, we need to verify your email.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Continue'),
                    ),
                  ],
                ));
              },
            );

            context.goNamedAuth(
              'UpdateProfilePage',
              context.mounted,
              queryParameters: {
                'email': serializeParam(
                  currentUserEmail,
                  ParamType.String,
                ),
              }.withoutNulls,
            );
          }
        }
      }

      _model.messagesCount = await queryMessagesRecordCount();
      _model.readyByCount = await queryReadbyRecordCount(
        queryBuilder: (readbyRecord) => readbyRecord.where(
          'uid',
          isEqualTo: currentUserUid,
        ),
      );
      FFAppState().notificationCounter = functions.getMessageCount(
          _model.messagesCount!, _model.readyByCount!)!;
    });

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
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    32.0, 32.0, 32.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('MessagesBox');
                                      },
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .justWhite,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Icon(
                                                Icons.notifications,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .justWhite,
                                                size: 14.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  1.00, -1.00),
                                              child: FutureBuilder<int>(
                                                future:
                                                    queryMessagesRecordCount(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  int containerCount =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: 15.0,
                                                    height: 15.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: FutureBuilder<int>(
                                                        future:
                                                            queryReadbyRecordCount(
                                                          queryBuilder:
                                                              (readbyRecord) =>
                                                                  readbyRecord
                                                                      .where(
                                                            'uid',
                                                            isEqualTo:
                                                                currentUserUid,
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          int counterCount =
                                                              snapshot.data!;
                                                          return Text(
                                                            functions
                                                                .getMessageCount(
                                                                    containerCount,
                                                                    counterCount)
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .justWhite,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('ProfilePage');
                                        },
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .justWhite,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) =>
                                                      Container(
                                                    width: 33.0,
                                                    height: 33.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: Duration(
                                                          milliseconds: 500),
                                                      imageUrl:
                                                          currentUserPhoto,
                                                      fit: BoxFit.cover,
                                                      errorWidget: (context,
                                                              error,
                                                              stackTrace) =>
                                                          Image.asset(
                                                        'assets/images/error_image.jpg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        wrapWithModel(
                          model: _model.bannerSliderModel,
                          updateCallback: () => setState(() {}),
                          child: BannerSliderWidget(
                            searchColour:
                                FlutterFlowTheme.of(context).textFieldIcon,
                            iconColour:
                                FlutterFlowTheme.of(context).textFieldIcon,
                            borderColour: FlutterFlowTheme.of(context).black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 16.0, 32.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Latest Announcement',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('MessagesBox');
                                },
                                child: Text(
                                  'See More',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 16.0, 32.0, 0.0),
                          child: StreamBuilder<List<MessagesRecord>>(
                            stream: queryMessagesRecord(
                              queryBuilder: (messagesRecord) => messagesRecord
                                  .orderBy('created', descending: true),
                              singleRecord: true,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<MessagesRecord> containerMessagesRecordList =
                                  snapshot.data!;
                              // Return an empty Container when the item does not exist.
                              if (snapshot.data!.isEmpty) {
                                return Container();
                              }
                              final containerMessagesRecord =
                                  containerMessagesRecordList.isNotEmpty
                                      ? containerMessagesRecordList.first
                                      : null;
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.readByDocumentHome =
                                      await queryReadbyRecordOnce(
                                    parent: containerMessagesRecord?.reference,
                                    queryBuilder: (readbyRecord) =>
                                        readbyRecord.where(
                                      'uid',
                                      isEqualTo: currentUserUid,
                                    ),
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  if (_model.readByDocumentHome != null) {
                                    context.pushNamed(
                                      'MessageDetailsPage',
                                      queryParameters: {
                                        'id': serializeParam(
                                          containerMessagesRecord?.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    await ReadbyRecord.createDoc(
                                            containerMessagesRecord!.reference)
                                        .set(createReadbyRecordData(
                                      uid: currentUserUid,
                                    ));

                                    context.pushNamed(
                                      'MessageDetailsPage',
                                      queryParameters: {
                                        'id': serializeParam(
                                          containerMessagesRecord?.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }

                                  setState(() {});
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 0.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            containerMessagesRecord!.title,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .justWhite,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 32.0, 32.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  'Hi, ${valueOrDefault(currentUserDocument?.firstName, '')}',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (_model.profileRefreshing) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return WebViewAware(
                                              child: AlertDialog(
                                            title: Text('Refreshing profile'),
                                            content: Text(
                                                'Please wait a few seconds whilst we refresh your profile to access payroll services.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          ));
                                        },
                                      );
                                    } else {
                                      context.pushNamed('PayrollServicesPage');
                                    }
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel1,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsPayrollServices,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Payroll\nServices',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('FidelityCaresPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel2,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsFidelityCares,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Fidelity\nCares',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('HRServicesPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel3,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsHumanResources,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Human\nResources',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('VanciesPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel4,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsVacancies,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'View\nVacancies',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
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
                                          'Guarding Services',
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          'Fidelity Security Services is able to offer customers comprehensive guarding solutions in a vast range of small and large scale industries.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-security-services/?gad_source=1&gclid=Cj0KCQjwqP2pBhDMARIsAJQ0CzpUmeL-TzQtsP1VK9vCDk5YF7JdKq48woHqLJnrGMbEfqbGRPXI3s4aAg2ZEALw_wcB',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel5,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.kbulletproofVest,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 35.0,
                                      ),
                                      title: 'Guarding\nServices',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
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
                                          'Fidelity Cash Solutions',
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          'Let Fidelity Cash Solutions be your one stop cash management partner. We have a range of solutions and services to meet your cash related needs.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-cash-solutions/',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel6,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsFidelityCash,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Fidelity\nCash',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
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
                                          'Fidelity ADT',
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          'The cornerstone of all security starts at home.This is why we have ensured a hands-on and immediate response service to assist you with any incident related queries, around the clock.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-adt/',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel7,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsFidelityADT,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Fidelity\nADT',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
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
                                          'Fidelity inSure',
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          'We’ve partnered with Auto & General* to bring you Fidelity inSure – an all-in-one insurance offering, covering vehicle, roadside, home, accident, trauma and legal assistance and benefits.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-insure/',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel8,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsFidelityInsure,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Fidelity\ninSure',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
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
                                          'Specialised Cleaning and Hygiene',
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          'Fidelity Cleaning Services offers environmentally-friendly contract cleaning, hygiene & pest control services by professionally trained staff to tackle small and large scenarios across all sectors.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-cleaning-services/',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel9,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.kwipingFloor,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 35.0,
                                      ),
                                      title: 'Fidelity\nCleaning',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'InfoPage',
                                      queryParameters: {
                                        'description': serializeParam(
                                          'The premier choice for clients and businesses who seek high quality, cost-effective fire solutions and products that are scalable, innovative and offer a superior customer service experience.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-securefire/',
                                          ParamType.String,
                                        ),
                                        'heading': serializeParam(
                                          'Total Integrated Fire Solutions',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel10,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsFidelityFire,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Fidelity\nFire',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
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
                                          'Your Driving Companion',
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          'Fidelity SecureDrive gives you a safer, smarter and more connected fleet experience.',
                                          ParamType.String,
                                        ),
                                        'link': serializeParam(
                                          'https://fidelity-services.com/our-products-services/fidelity-securedrive/',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel11,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewSecureDrive1,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 35.0,
                                      ),
                                      title: 'Secure\nDrive',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('UmsukaWemaliApplyPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel12,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.kumsuka1,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 30.0,
                                      ),
                                      title: 'Umsuka\nWemali',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ComplimentsPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel13,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsCompliments,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Send\nPraise',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ReportFraudPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel14,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.knewAppIconsReportFraud,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 50.0,
                                      ),
                                      title: 'Report\nFraud',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('ReportIncidentPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel15,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.ksos,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 40.0,
                                      ),
                                      title: 'Report\nIncident',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('EventsPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel16,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.kcalendar,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 45.0,
                                      ),
                                      title: 'View\nEvents',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 32.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('CoidaPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel17,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        FFIcons.kcOIDAIcon,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 30.0,
                                      ),
                                      title: 'COIDA\nInfo',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('AboutPage');
                                  },
                                  child: wrapWithModel(
                                    model: _model.menuIconModel18,
                                    updateCallback: () => setState(() {}),
                                    child: MenuIconWidget(
                                      icon: Icon(
                                        Icons.info_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                        size: 30.0,
                                      ),
                                      title: 'About\nFESS',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.emptyMenuIconModel1,
                                  updateCallback: () => setState(() {}),
                                  child: EmptyMenuIconWidget(),
                                ),
                              ),
                              Expanded(
                                child: wrapWithModel(
                                  model: _model.emptyMenuIconModel2,
                                  updateCallback: () => setState(() {}),
                                  child: EmptyMenuIconWidget(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              wrapWithModel(
                model: _model.bottomNavModel,
                updateCallback: () => setState(() {}),
                child: BottomNavWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
