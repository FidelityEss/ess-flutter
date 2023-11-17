import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'gold_download_button_model.dart';
export 'gold_download_button_model.dart';

class GoldDownloadButtonWidget extends StatefulWidget {
  const GoldDownloadButtonWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String? title;

  @override
  _GoldDownloadButtonWidgetState createState() =>
      _GoldDownloadButtonWidgetState();
}

class _GoldDownloadButtonWidgetState extends State<GoldDownloadButtonWidget> {
  late GoldDownloadButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoldDownloadButtonModel());

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
      height: 45.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).justWhite,
                  ),
            ),
            Icon(
              Icons.download_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 18.0,
            ),
          ],
        ),
      ),
    );
  }
}
