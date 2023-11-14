import '/components/banner_slider_widget.dart';
import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_page_model.dart';
export 'about_page_model.dart';

class AboutPageWidget extends StatefulWidget {
  const AboutPageWidget({Key? key}) : super(key: key);

  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  late AboutPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutPageModel());

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
                    title: 'About',
                  ),
                ),
                wrapWithModel(
                  model: _model.bannerSliderModel,
                  updateCallback: () => setState(() {}),
                  child: BannerSliderWidget(),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                    child: Text(
                      'CONNECTING EMPLOYEES',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 16.0,
                              ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 4.0, 32.0, 0.0),
                    child: Text(
                      'EMPOWERING COMMUNICATION',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 16.0,
                              ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                  child: Text(
                    'About FESS',
                    style: FlutterFlowTheme.of(context).displayMedium.override(
                          fontFamily: 'Montserrat',
                          fontSize: 22.0,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                  child: Text(
                    'FESS VISION STATEMENT',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                  child: Text(
                    'To empower Fidelity Service Group Employees with a cutting-edge self-service platform that simplifies and enhances their work experience. FESS envisions a future where every employee can effortlessly access, manage, and personalise their employment-related information in a seamless, intuitive, and secure manner, ultimately promoting productivity, engagement, and well-being within our Fidelity family.',
                    style: FlutterFlowTheme.of(context).displayMedium,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                  child: Text(
                    'FESS MISSION STATEMENT',
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 32.0),
                  child: Text(
                    'Our mission at FESS is to provide Fidelity employees with an innovative and user-centric self-service platform. \n\nWe are committed to:\n\n1.\tEmpowerment: \n\nEmpower employees to take control of their work-related tasks and information, allowing them to make more informed decisions about their careers and benefits.\n\n2.\tEfficiency: \n\nStreamline and simplify Payroll and HR-related processes, reducing administrative burden, and saving valuable time for both employees and Management. \n\n3.\tAccessibility: \n\nEnsure that our platform is accessible to all employees, promoting inclusivity and equal opportunities for every employee of the Fidelity family.\n\n4.\tSecurity: \n\nPrioritize the highest standards of data security and privacy to safeguard employee information.\n\n5.\tContinuous Improvement: \n\nContinually evolve our app based on employee feedback and changing needs, ensuring it remains a valuable resource for our workforce.\n\n6.\tSatisfaction: \n\nStrive for the highest levels of employee satisfaction by providing a platform that enhances work experience and supports professional growth.',
                    style: FlutterFlowTheme.of(context).displayMedium,
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
