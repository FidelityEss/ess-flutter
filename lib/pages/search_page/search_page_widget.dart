import '/components/custom_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_page_model.dart';
export 'search_page_model.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({Key? key}) : super(key: key);

  @override
  _SearchPageWidgetState createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  late SearchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.customAppBarModel,
                updateCallback: () => setState(() {}),
                child: CustomAppBarWidget(
                  title: 'Search',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 0.0),
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.textController',
                    Duration(milliseconds: 2000),
                    () async {
                      setState(() {
                        _model.keyword = _model.textController.text;
                      });
                    },
                  ),
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
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
                      size: 18.0,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final filteredList = functions
                                .searchFilter(FFAppState().searchItems.toList(),
                                    _model.keyword)
                                ?.toList() ??
                            [];
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: filteredList.length,
                          itemBuilder: (context, filteredListIndex) {
                            final filteredListItem =
                                filteredList[filteredListIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (filteredListItem == 'Payroll Services') {
                                    context.pushNamed('PayrollServicesPage');
                                  } else {
                                    if (filteredListItem == 'Fidelity Cares') {
                                      context.pushNamed('FidelityCaresPage');
                                    } else {
                                      if (filteredListItem ==
                                          'Human Resources') {
                                        context.pushNamed('HRServicesPage');
                                      } else {
                                        if (filteredListItem == 'Vacancies') {
                                          context.pushNamed('VanciesPage');
                                        } else {
                                          if (filteredListItem ==
                                              'Compliments') {
                                            context
                                                .pushNamed('ComplimentsPage');
                                          } else {
                                            if (filteredListItem ==
                                                'Report Incident') {
                                              context.pushNamed(
                                                  'ReportIncidentPage');
                                            } else {
                                              if (filteredListItem ==
                                                  'Events') {
                                                context.pushNamed('EventsPage');
                                              } else {
                                                if (filteredListItem ==
                                                    'Payslips') {
                                                  context.pushNamed(
                                                      'PayslipTaxListPage');
                                                } else {
                                                  if (filteredListItem ==
                                                      'Time and Attendance') {
                                                    context.pushNamed(
                                                        'TimeAndAttendancePage');
                                                  } else {
                                                    if (filteredListItem ==
                                                        'Queries') {
                                                      context.pushNamed(
                                                          'QueriesPage');
                                                    } else {
                                                      if (filteredListItem ==
                                                          'Messages') {
                                                        context.pushNamed(
                                                            'MessagesBox');
                                                      } else {
                                                        if (filteredListItem ==
                                                            'Profile') {
                                                          context.pushNamed(
                                                              'ManageProfile');
                                                        } else {
                                                          if (filteredListItem ==
                                                              'Guarding Services') {
                                                            context.pushNamed(
                                                              'InfoPage',
                                                              queryParameters: {
                                                                'heading':
                                                                    serializeParam(
                                                                  'Guarding Services',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'description':
                                                                    serializeParam(
                                                                  'Fidelity Security Services is able to offer customers comprehensive guarding solutions in a vast range of small and large scale industries.',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'link':
                                                                    serializeParam(
                                                                  'https://fidelity-services.com/our-products-services/fidelity-security-services/?gad_source=1&gclid=Cj0KCQjwqP2pBhDMARIsAJQ0CzpUmeL-TzQtsP1VK9vCDk5YF7JdKq48woHqLJnrGMbEfqbGRPXI3s4aAg2ZEALw_wcB',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          } else {
                                                            if (filteredListItem ==
                                                                'Fidelity Cash') {
                                                              context.pushNamed(
                                                                'InfoPage',
                                                                queryParameters:
                                                                    {
                                                                  'heading':
                                                                      serializeParam(
                                                                    'Fidelity Cash Solutions',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'description':
                                                                      serializeParam(
                                                                    'Let Fidelity Cash Solutions be your one stop cash management partner. We have a range of solutions and services to meet your cash related needs.',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'link':
                                                                      serializeParam(
                                                                    'https://fidelity-services.com/our-products-services/fidelity-cash-solutions/',
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              if (filteredListItem ==
                                                                  'Fidelity ADT') {
                                                                context
                                                                    .pushNamed(
                                                                  'InfoPage',
                                                                  queryParameters:
                                                                      {
                                                                    'heading':
                                                                        serializeParam(
                                                                      'Fidelity ADT',
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'description':
                                                                        serializeParam(
                                                                      'The cornerstone of all security starts at home.This is why we have ensured a hands-on and immediate response service to assist you with any incident related queries, around the clock.',
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                    'link':
                                                                        serializeParam(
                                                                      'https://fidelity-services.com/our-products-services/fidelity-adt/',
                                                                      ParamType
                                                                          .String,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              } else {
                                                                if (filteredListItem ==
                                                                    'Fidelity Insure') {
                                                                  context
                                                                      .pushNamed(
                                                                    'InfoPage',
                                                                    queryParameters:
                                                                        {
                                                                      'heading':
                                                                          serializeParam(
                                                                        'Fidelity inSure',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'description':
                                                                          serializeParam(
                                                                        'We’ve partnered with Auto & General* to bring you Fidelity inSure – an all-in-one insurance offering covering vehicle, roadside, home, accident, trauma and legal assistance and benefits.',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                      'link':
                                                                          serializeParam(
                                                                        'https://fidelity-services.com/our-products-services/fidelity-insure/',
                                                                        ParamType
                                                                            .String,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                } else {
                                                                  if (filteredListItem ==
                                                                      'Fidelity Cleaning') {
                                                                    context
                                                                        .pushNamed(
                                                                      'InfoPage',
                                                                      queryParameters:
                                                                          {
                                                                        'heading':
                                                                            serializeParam(
                                                                          'Specialised cleaning and hygiene',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'description':
                                                                            serializeParam(
                                                                          'Fidelity Cleaning Services is an environmentally-friendly service that not only offers the best tools, equipment and cleaning agents to meet any requirement, but also professionally trained staff to tackle scenarios small and large, across all sectors.',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                        'link':
                                                                            serializeParam(
                                                                          'https://fidelity-services.com/our-products-services/fidelity-cleaning-services/',
                                                                          ParamType
                                                                              .String,
                                                                        ),
                                                                      }.withoutNulls,
                                                                    );
                                                                  } else {
                                                                    if (filteredListItem ==
                                                                        'Fidelity Fire') {
                                                                      context
                                                                          .pushNamed(
                                                                        'InfoPage',
                                                                        queryParameters:
                                                                            {
                                                                          'description':
                                                                              serializeParam(
                                                                            'The premier choice for clients and businesses who seek high quality, cost-effective fire solutions and products that are scalable, innovative and offer a superior customer service experience.',
                                                                            ParamType.String,
                                                                          ),
                                                                          'link':
                                                                              serializeParam(
                                                                            'https://fidelity-services.com/our-products-services/fidelity-securefire/',
                                                                            ParamType.String,
                                                                          ),
                                                                          'heading':
                                                                              serializeParam(
                                                                            'Total Integrated Fire Solutions',
                                                                            ParamType.String,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    } else {
                                                                      if (filteredListItem ==
                                                                          'Secure Drive') {
                                                                        context
                                                                            .pushNamed(
                                                                          'InfoPage',
                                                                          queryParameters:
                                                                              {
                                                                            'heading':
                                                                                serializeParam(
                                                                              'Your driving companion',
                                                                              ParamType.String,
                                                                            ),
                                                                            'description':
                                                                                serializeParam(
                                                                              'Fidelity SecureDrive gives you a safer, smarter and more connected fleet experience.',
                                                                              ParamType.String,
                                                                            ),
                                                                            'link':
                                                                                serializeParam(
                                                                              'https://fidelity-services.com/our-products-services/fidelity-securedrive/',
                                                                              ParamType.String,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );
                                                                      } else {
                                                                        if (filteredListItem ==
                                                                            'Umsuka Wemali') {
                                                                          context
                                                                              .pushNamed('UmsukaWemaliApplyPage');
                                                                        } else {
                                                                          if (filteredListItem ==
                                                                              'Training and Development') {
                                                                            context.pushNamed(
                                                                              'InfoPage',
                                                                              queryParameters: {
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
                                                                          } else {
                                                                            if (filteredListItem ==
                                                                                'Report Fraud') {
                                                                              context.pushNamed('ReportFraudPage');
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          filteredListItem,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Icon(
                                          Icons.chevron_right_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .textFieldIcon,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
