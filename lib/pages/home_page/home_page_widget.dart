import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/bottom_nav_widget.dart';
import '/components/loading_dialog_widget.dart';
import '/components/menu_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
      if (functions.hoursAgo(FFAppState().tokenUpdateTime!) >= 4) {
        await showAlignedDialog(
          context: context,
          isGlobal: true,
          avoidOverflow: false,
          targetAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          followerAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          builder: (dialogContext) {
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: LoadingDialogWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));

        _model.apiResultzcx = await FessApiGroup.authenticationCall.call(
          employeeNumber: valueOrDefault(currentUserDocument?.en, ''),
          idNumber: valueOrDefault(currentUserDocument?.eid, ''),
        );
        if ((_model.apiResultzcx?.succeeded ?? true)) {
          setState(() {
            FFAppState().token = FessApiGroup.authenticationCall
                .token(
                  (_model.apiResultzcx?.jsonBody ?? ''),
                )
                .toString();
            FFAppState().tokenUpdateTime = getCurrentTimestamp;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Profile Refreshed',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).justWhite,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
        }
        Navigator.pop(context);
      }
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

    return Builder(
      builder: (context) => GestureDetector(
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
                            height: 260.0,
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
                                      Icon(
                                        FFIcons.kfESSFidelityServicesGroupWhite,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 45.0,
                                      ),
                                      Row(
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
                                              width: 35.0,
                                              height: 35.0,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .justWhite,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.notifications,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .justWhite,
                                                size: 14.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context
                                                    .pushNamed('ProfilePage');
                                              },
                                              child: Container(
                                                width: 35.0,
                                                height: 35.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .justWhite,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            Container(
                                                          width: 33.0,
                                                          height: 33.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child:
                                                              CachedNetworkImage(
                                                            fadeInDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
                                                            fadeOutDuration:
                                                                Duration(
                                                                    milliseconds:
                                                                        500),
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 32.0, 32.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Hi there, ${valueOrDefault(currentUserDocument?.firstName, '')}',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .justWhite,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 32.0, 32.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .justWhite,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.help_outline_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .justWhite,
                                            size: 16.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Get Help',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .justWhite,
                                              borderRadius:
                                                  BorderRadius.circular(35.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Icon(
                                                Icons.navigate_next_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .justBlack,
                                                size: 16.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 32.0, 32.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Latest Announcement',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                      ),
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
                                          fontWeight: FontWeight.w600,
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
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<MessagesRecord>
                                    containerMessagesRecordList =
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
                                    context.pushNamed(
                                      'MessageDetailsPage',
                                      queryParameters: {
                                        'id': serializeParam(
                                          containerMessagesRecord?.id,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
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
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .justWhite,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                Text(
                                  'Quick Access',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
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
                                      context.pushNamed('PayrollServicesPage');
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
                                        title: 'Payroll Services',
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
                                      context.pushNamed('IncidentsPage');
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuIconModel3,
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
                                      context.pushNamed('IncidentsPage');
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuIconModel4,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          Icons.help_outline_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 30.0,
                                        ),
                                        title: 'Report\nIncident',
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
                                      context.pushNamed('MessagesBox');
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuIconModel5,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          FFIcons.knewAppIconsMessages,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 50.0,
                                        ),
                                        title: 'Your\nMailbox',
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
                                      model: _model.menuIconModel6,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          Icons.calendar_month_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 30.0,
                                        ),
                                        title: 'View\nEvents',
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
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Warning'),
                                            content: Text(
                                                'This function has not been developed yet'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuIconModel7,
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
                                      model: _model.menuIconModel8,
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
                                      context.pushNamed('ComplimentsPage');
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuIconModel9,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          FFIcons.knewAppIconsCompliments,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 50.0,
                                        ),
                                        title: 'Send\nCompliments',
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
                                            'We’ve partnered with Auto & General* to bring you Fidelity inSure – an all-in-one insurance offering covering vehicle, roadside, home, accident, trauma and legal assistance and benefits.',
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
                                      model: _model.menuIconModel10,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          FFIcons.knewAppIconsFidelityInsure,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 50.0,
                                        ),
                                        title: 'Fidelity\nInsure',
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
                                      model: _model.menuIconModel11,
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
                                      model: _model.menuIconModel12,
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
                                      model: _model.menuIconModel13,
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
                                            'Your driving companion',
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
                                      model: _model.menuIconModel14,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          Icons.directions_car_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 30.0,
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
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Warning'),
                                            content: Text(
                                                'This function has not been developed yet'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuIconModel15,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          FFIcons.knewAppIconsUmsukaWemali,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 50.0,
                                        ),
                                        title: 'Umsuka\nWemali',
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
                                      model: _model.menuIconModel16,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          FFIcons.knewAppIconsTraining,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 50.0,
                                        ),
                                        title: 'Fidelity\nTraining',
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
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
                                            'Specialised cleaning and hygiene',
                                            ParamType.String,
                                          ),
                                          'description': serializeParam(
                                            'Fidelity Cleaning Services is an environmentally-friendly service that not only offers the best tools, equipment and cleaning agents to meet any requirement, but also professionally trained staff to tackle scenarios small and large, across all sectors.',
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
                                      model: _model.menuIconModel17,
                                      updateCallback: () => setState(() {}),
                                      child: MenuIconWidget(
                                        icon: Icon(
                                          Icons.clean_hands,
                                          color: FlutterFlowTheme.of(context)
                                              .justWhite,
                                          size: 30.0,
                                        ),
                                        title: 'Fidelity\nCleaning',
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
      ),
    );
  }
}
