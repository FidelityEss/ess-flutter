import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'banner_slider_model.dart';
export 'banner_slider_model.dart';

class BannerSliderWidget extends StatefulWidget {
  const BannerSliderWidget({
    Key? key,
    Color? searchColour,
    Color? iconColour,
    Color? borderColour,
  })  : this.searchColour = searchColour ?? Colors.white,
        this.iconColour = iconColour ?? Colors.white,
        this.borderColour = borderColour ?? Colors.white,
        super(key: key);

  final Color searchColour;
  final Color iconColour;
  final Color borderColour;

  @override
  _BannerSliderWidgetState createState() => _BannerSliderWidgetState();
}

class _BannerSliderWidgetState extends State<BannerSliderWidget> {
  late BannerSliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BannerSliderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 290.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Icon(
              FFIcons.kfESSFidelityServicesGroupWhite,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 70.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 16.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('SearchPage');
              },
              child: Container(
                width: double.infinity,
                height: 45.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: FlutterFlowTheme.of(context).textFieldIcon,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Search',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
