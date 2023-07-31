import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'configurations_model.dart';
export 'configurations_model.dart';

class ConfigurationsWidget extends StatefulWidget {
  const ConfigurationsWidget({Key? key}) : super(key: key);

  @override
  _ConfigurationsWidgetState createState() => _ConfigurationsWidgetState();
}

class _ConfigurationsWidgetState extends State<ConfigurationsWidget> {
  late ConfigurationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfigurationsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFD26C03),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30.0,
          ),
          onPressed: () async {
            context.safePop();
          },
        ),
        title: Text(
          'Configurações',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 22.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).headlineMediumFamily),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Text(
                        'Escolha abaixo quais notificações deseja receber e atualizaremos as configurações.',
                        style: FlutterFlowTheme.of(context).bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: SwitchListTile.adaptive(
                value: _model.switchListTileValue1 ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchListTileValue1 = newValue!);
                },
                title: Text(
                  'Push Notificações',
                  style: FlutterFlowTheme.of(context).headlineSmall,
                ),
                subtitle: Text(
                  'Receba notificações push de nosso aplicativo regularmente.',
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
                activeColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: Color(0x8A4B39EF),
                dense: false,
                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
              ),
            ),
            SwitchListTile.adaptive(
              value: _model.switchListTileValue2 ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue2 = newValue!);
              },
              title: Text(
                'Email Notificações',
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              subtitle: Text(
                'Receba notificações por e-mail de nossa equipe de marketing sobre novos recursos.',
                style: FlutterFlowTheme.of(context).bodySmall,
              ),
              activeColor: Color(0xFF4B39EF),
              activeTrackColor: Color(0xFF3B2DB6),
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var confirmDialogResponse = await showDialog<bool>(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('EXCLUSÃO DE CONTA'),
                            content: Text(
                                'Atenção você confirma a exclusão de sua conta e todos seus dados registrados no programa de fidelidade Raízes Premium?'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, false),
                                child: Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, true),
                                child: Text('Confirmar'),
                              ),
                            ],
                          );
                        },
                      ) ??
                      false;
                  if (confirmDialogResponse) {
                    await RPDeletarConsumidorCall.call(
                      cpf: FFAppState().docAuth,
                    );
                    await currentUserReference!.delete();
                    await authManager.deleteUser(context);
                    await Future.delayed(const Duration(milliseconds: 1000));

                    context.pushNamed('AteLogo');

                    setState(() {
                      FFAppState().deleteDocAuth();
                      FFAppState().docAuth = '';

                      FFAppState().deleteJsonProdutos();
                      FFAppState().JsonProdutos = null;

                      FFAppState().deleteJsonPontos();
                      FFAppState().jsonPontos = null;

                      FFAppState().deleteJsonClientes();
                      FFAppState().jsonClientes = null;

                      FFAppState().deleteJsonSaldo();
                      FFAppState().jsonSaldo = null;
                    });
                  } else {
                    return;
                  }
                },
                text: 'Excluir Conta',
                options: FFButtonOptions(
                  width: 150.0,
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFCD0425),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
              child: Text(
                '                                      *Atenção*\nAo excluir sua conta todos seus dados serão apagados. Seu histórico de pontuação, resgate e saldo também serão excluidos. A exclusão da conta não poderá ser desfeita!\n',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Color(0xFFCD0425),
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
