import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().docAuth != null && FFAppState().docAuth != '') {
        context.pushNamed('Home');
      }
    });

    _model.documentoController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFD26C03),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (Theme.of(context).brightness == Brightness.dark)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/logo1.jpg',
                            width: 240.0,
                            height: 60.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      if (!(Theme.of(context).brightness == Brightness.dark))
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/logo2.jpg',
                            width: 240.0,
                            height: 60.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 25.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Image.asset(
                              'assets/images/illi_2@2x.png',
                              width: 300.0,
                              height: 196.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x3600000F),
                            offset: Offset(0.0, -1.0),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 25.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Color(0xFFF1F4F8),
                                      borderRadius: 30.0,
                                      borderWidth: 2.0,
                                      buttonSize: 44.0,
                                      icon: Icon(
                                        Icons.vpn_key_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'CNPJ ou CPF',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF7D7D7D),
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMediumFamily),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 16.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _model.documentoController,
                                      textCapitalization:
                                          TextCapitalization.none,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Digite seu CNPJ ou CPF...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        hintText: 'Exemp: 000.000.000-00',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFEB7D04),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 24.0, 0.0, 24.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF7D7D7D),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                      minLines: 1,
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .documentoControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 50.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FFButtonWidget(
                                    onPressed: _model
                                                    .documentoController.text ==
                                                null ||
                                            _model.documentoController.text ==
                                                ''
                                        ? null
                                        : () async {
                                            var _shouldSetState = false;
                                            _model.resultApiCliente =
                                                await RPConsultaClientesCall
                                                    .call(
                                              cpf: _model
                                                  .documentoController.text,
                                            );
                                            _shouldSetState = true;
                                            if (RPConsultaClientesCall
                                                    .codigoResposta(
                                                  (_model.resultApiCliente
                                                          ?.jsonBody ??
                                                      ''),
                                                ) ==
                                                100) {
                                              FFAppState().update(() {
                                                FFAppState().docAuth =
                                                    RPConsultaClientesCall
                                                        .documento(
                                                  (_model.resultApiCliente
                                                          ?.jsonBody ??
                                                      ''),
                                                ).toString();
                                                FFAppState().jsonClientes =
                                                    RPConsultaClientesCall
                                                        .clientRetorno(
                                                  (_model.resultApiCliente
                                                          ?.jsonBody ??
                                                      ''),
                                                );
                                                FFAppState().dataNascimento =
                                                    valueOrDefault<String>(
                                                  getJsonField(
                                                    (_model.resultApiCliente
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data_nascimento''',
                                                  ).toString(),
                                                  '2023-06-11',
                                                );
                                              });
                                              if (FFAppState().dataNascimento ==
                                                  'null') {
                                                setState(() {
                                                  FFAppState().dataNascimento =
                                                      '1000-01-01';
                                                });
                                              }
                                              if (FFAppState().docAuth !=
                                                      null &&
                                                  FFAppState().docAuth != '') {
                                                _model.resultApiPontos =
                                                    await RPConsultaPontosCall
                                                        .call(
                                                  cpf: FFAppState().docAuth,
                                                );
                                                _shouldSetState = true;
                                                setState(() {
                                                  FFAppState().jsonPontos =
                                                      getJsonField(
                                                    (_model.resultApiPontos
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.produtos''',
                                                  );
                                                  FFAppState().jsonSaldo =
                                                      getJsonField(
                                                    (_model.resultApiPontos
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$''',
                                                  );
                                                });
                                                _model.resultLista =
                                                    await RPListaDeBrindesCall
                                                        .call();
                                                _shouldSetState = true;
                                                setState(() {
                                                  FFAppState().JsonProdutos =
                                                      getJsonField(
                                                    (_model.resultLista
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.produtos''',
                                                  );
                                                });
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 2000));
                                                if ((getJsonField(
                                                          FFAppState()
                                                              .jsonClientes,
                                                          r'''$.email''',
                                                        ) ==
                                                        FFAppState().Arroba) ||
                                                    (getJsonField(
                                                          FFAppState()
                                                              .jsonClientes,
                                                          r'''$.telefone''',
                                                        ) ==
                                                        null) ||
                                                    (getJsonField(
                                                          FFAppState()
                                                              .jsonClientes,
                                                          r'''$.data_nascimento''',
                                                        ) ==
                                                        FFAppState()
                                                            .dataIgual)) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Dados incompletos'),
                                                        content: Text(
                                                            'Atualizar dados de usuário. 👤 '),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );

                                                  context.pushNamedAuth(
                                                      'AtualizaDados',
                                                      context.mounted);
                                                } else {
                                                  context.pushNamedAuth(
                                                      'Home', context.mounted);

                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();

                                                  final user = await authManager
                                                      .signInWithEmail(
                                                    context,
                                                    getJsonField(
                                                      FFAppState().jsonClientes,
                                                      r'''$.email''',
                                                    ).toString(),
                                                    FFAppState().passwordPadrao,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }
                                                }
                                              } else {
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title:
                                                        Text('Não Cadastrado'),
                                                    content: Text(
                                                        'Realize Seu Cadastro'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                              await launchURL(
                                                  'https://raizesmaquinas.fidelimax.com.br/');
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                    text: 'Entrar',
                                    options: FFButtonOptions(
                                      width: 130.0,
                                      height: 50.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFF4B39EF),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily),
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      disabledColor: Color(0x3F636363),
                                      disabledTextColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
