import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_menu_icon_model.dart';
export 'empty_menu_icon_model.dart';

class EmptyMenuIconWidget extends StatefulWidget {
  const EmptyMenuIconWidget({Key? key}) : super(key: key);

  @override
  _EmptyMenuIconWidgetState createState() => _EmptyMenuIconWidgetState();
}

class _EmptyMenuIconWidgetState extends State<EmptyMenuIconWidget> {
  late EmptyMenuIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyMenuIconModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).justWhite,
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
          child: Text(
            '',
            textAlign: TextAlign.center,
            maxLines: 2,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).justWhite,
                ),
          ),
        ),
      ],
    );
  }
}
