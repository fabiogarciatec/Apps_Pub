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

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for documento widget.
  TextEditingController? documentoController;
  String? Function(BuildContext, String?)? documentoControllerValidator;
  // Stores action output result for [Backend Call - API (RP Consulta Clientes)] action in Button widget.
  ApiCallResponse? resultApiCliente;
  // Stores action output result for [Backend Call - API (RP Consulta Pontos)] action in Button widget.
  ApiCallResponse? resultApiPontos;
  // Stores action output result for [Backend Call - API (RP Lista de Brindes)] action in Button widget.
  ApiCallResponse? resultLista;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    documentoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
