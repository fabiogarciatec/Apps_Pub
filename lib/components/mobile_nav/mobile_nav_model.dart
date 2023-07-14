import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MobileNavModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  InstantTimer? timerclients;
  // Stores action output result for [Backend Call - API (RP Consulta Pontos)] action in Column widget.
  ApiCallResponse? resultPontos;
  InstantTimer? timer10sec;
  // Stores action output result for [Backend Call - API (RP Lista de Brindes)] action in Column widget.
  ApiCallResponse? timerLista;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    timerclients?.cancel();
    timer10sec?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
