import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'banner_slider_no_search_model.dart';
export 'banner_slider_no_search_model.dart';

class BannerSliderNoSearchWidget extends StatefulWidget {
  const BannerSliderNoSearchWidget({Key? key}) : super(key: key);

  @override
  _BannerSliderNoSearchWidgetState createState() =>
      _BannerSliderNoSearchWidgetState();
}

class _BannerSliderNoSearchWidgetState
    extends State<BannerSliderNoSearchWidget> {
  late BannerSliderNoSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BannerSliderNoSearchModel());

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
      height: 200.0,
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
        ],
      ),
    );
  }
}
