import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_bottom_sheet_model.dart';
export 'menu_bottom_sheet_model.dart';

class MenuBottomSheetWidget extends StatefulWidget {
  const MenuBottomSheetWidget({Key? key}) : super(key: key);

  @override
  _MenuBottomSheetWidgetState createState() => _MenuBottomSheetWidgetState();
}

class _MenuBottomSheetWidgetState extends State<MenuBottomSheetWidget> {
  late MenuBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuBottomSheetModel());

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
      height: MediaQuery.sizeOf(context).height * 0.3,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 2.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).textFieldIcon,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          'assets/images/IconInsureBlack.png',
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Fidelity Insure',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                    ],
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
                          'title': serializeParam(
                            'Fidelity Cleaning',
                            ParamType.String,
                          ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/IconCleaningBlack.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Fidelity Cleaning',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
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
                          'title': serializeParam(
                            'Fidelity Fire',
                            ParamType.String,
                          ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/IconFireBlack.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Fidelity Fire',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
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
                          'title': serializeParam(
                            'Fidelity Cash',
                            ParamType.String,
                          ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/IconCashBlack.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Fidelity Cash',
                            style: FlutterFlowTheme.of(context).bodySmall,
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
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
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
                          'title': serializeParam(
                            'Fidelity ADT',
                            ParamType.String,
                          ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/Fidelity_ADT.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Fidelity ADT',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
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
                          'title': serializeParam(
                            'Fidelity SecureDrive',
                            ParamType.String,
                          ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/Fidelity_Secure_Drive.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'SecureDrive',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          'assets/images/Umsuka_Wemali.png',
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Umsuka Wemali',
                          style: FlutterFlowTheme.of(context).bodySmall,
                        ),
                      ),
                    ],
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
                          'title': serializeParam(
                            'Training',
                            ParamType.String,
                          ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            'assets/images/Training.png',
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Training',
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
