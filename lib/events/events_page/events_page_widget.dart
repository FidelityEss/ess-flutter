import '/backend/backend.dart';
import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'events_page_model.dart';
export 'events_page_model.dart';

class EventsPageWidget extends StatefulWidget {
  const EventsPageWidget({Key? key}) : super(key: key);

  @override
  _EventsPageWidgetState createState() => _EventsPageWidgetState();
}

class _EventsPageWidgetState extends State<EventsPageWidget> {
  late EventsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventsPageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).white,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.customAppBarModel,
                  updateCallback: () => setState(() {}),
                  child: CustomAppBarWidget(
                    title: 'Events',
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
                Container(
                  width: double.infinity,
                  height: 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Featured Events',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: StreamBuilder<List<EventsRecord>>(
                    stream: queryEventsRecord(
                      queryBuilder: (eventsRecord) => eventsRecord.where(
                        'featured',
                        isEqualTo: true,
                      ),
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
                      List<EventsRecord> rowEventsRecordList = snapshot.data!;
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(rowEventsRecordList.length,
                              (rowIndex) {
                            final rowEventsRecord =
                                rowEventsRecordList[rowIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'EventDetailsPage',
                                    queryParameters: {
                                      'id': serializeParam(
                                        rowEventsRecord.id,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: 220.0,
                                  height: 130.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).white,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 0.0,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Image.network(
                                          rowEventsRecord.image,
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0x65000000),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x7FB79E67),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        rowEventsRecord.title,
                                                        maxLines: 1,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .justWhite,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    3.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          dateTimeFormat(
                                                              'MMMMEEEEd',
                                                              rowEventsRecord
                                                                  .date!),
                                                          maxLines: 1,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .justWhite,
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
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Other events',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: StreamBuilder<List<EventsRecord>>(
                    stream: queryEventsRecord(
                      queryBuilder: (eventsRecord) => eventsRecord.where(
                        'featured',
                        isEqualTo: false,
                      ),
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
                      List<EventsRecord> listViewEventsRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewEventsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewEventsRecord =
                              listViewEventsRecordList[listViewIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'EventDetailsPage',
                                  queryParameters: {
                                    'id': serializeParam(
                                      listViewEventsRecord.id,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 65.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).homeBg,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).white,
                                      width: 0.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 30.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Icon(
                                              Icons.calendar_today,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              size: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewEventsRecord.title,
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'MMMMEEEEd',
                                                      listViewEventsRecord
                                                          .date!),
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
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
                                          color: FlutterFlowTheme.of(context)
                                              .black,
                                          size: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
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
