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
import 'event_details_page_model.dart';
export 'event_details_page_model.dart';

class EventDetailsPageWidget extends StatefulWidget {
  const EventDetailsPageWidget({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String? id;

  @override
  _EventDetailsPageWidgetState createState() => _EventDetailsPageWidgetState();
}

class _EventDetailsPageWidgetState extends State<EventDetailsPageWidget> {
  late EventDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventDetailsPageModel());

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

    return StreamBuilder<List<EventsRecord>>(
      stream: queryEventsRecord(
        queryBuilder: (eventsRecord) => eventsRecord.where(
          'id',
          isEqualTo: widget.id,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<EventsRecord> eventDetailsPageEventsRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final eventDetailsPageEventsRecord =
            eventDetailsPageEventsRecordList.isNotEmpty
                ? eventDetailsPageEventsRecordList.first
                : null;
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
                        title: 'Event Details',
                      ),
                    ),
                    wrapWithModel(
                      model: _model.bannerSliderModel,
                      updateCallback: () => setState(() {}),
                      child: BannerSliderWidget(),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                      child: Text(
                        eventDetailsPageEventsRecord!.title,
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 20.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dateTimeFormat('MMMMEEEEd',
                                        eventDetailsPageEventsRecord!.date!),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      dateTimeFormat('jm',
                                          eventDetailsPageEventsRecord!.date!),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 20.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    eventDetailsPageEventsRecord!.locationName,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      '${eventDetailsPageEventsRecord?.locationStreet}, ${eventDetailsPageEventsRecord?.locationSuburb}, ${eventDetailsPageEventsRecord?.locationCity}, ${eventDetailsPageEventsRecord?.locationProvince}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_rounded,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 20.0,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    eventDetailsPageEventsRecord!
                                        .contactPersonName,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      eventDetailsPageEventsRecord!
                                          .contactPersonEmail,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                      child: Text(
                        'About Event',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          32.0, 16.0, 32.0, 32.0),
                      child: Text(
                        eventDetailsPageEventsRecord!.description,
                        style: FlutterFlowTheme.of(context).bodyMedium,
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
  }
}
