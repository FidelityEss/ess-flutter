import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payslip_tax_page_model.dart';
export 'payslip_tax_page_model.dart';

class PayslipTaxPageWidget extends StatefulWidget {
  const PayslipTaxPageWidget({Key? key}) : super(key: key);

  @override
  _PayslipTaxPageWidgetState createState() => _PayslipTaxPageWidgetState();
}

class _PayslipTaxPageWidgetState extends State<PayslipTaxPageWidget> {
  late PayslipTaxPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayslipTaxPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
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
            children: [],
          ),
        ),
      ),
    );
  }
}
