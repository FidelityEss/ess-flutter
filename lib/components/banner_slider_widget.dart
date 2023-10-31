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

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
      height: 280.0,
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
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
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                onFieldSubmitted: (_) async {
                  context.pushNamed('SearchPage');
                },
                readOnly: true,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Search',
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Montserrat',
                        color: widget.searchColour,
                        fontWeight: FontWeight.w600,
                      ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Montserrat',
                        color: widget.searchColour,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderColour,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: widget.borderColour,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: widget.iconColour,
                    size: 16.0,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      color: widget.searchColour,
                      fontWeight: FontWeight.w600,
                    ),
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
