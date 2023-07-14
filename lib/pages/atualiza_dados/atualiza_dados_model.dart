import '/auth/base_auth_user_provider.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AtualizaDadosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextDocumento widget.
  TextEditingController? textDocumentoController;
  String? Function(BuildContext, String?)? textDocumentoControllerValidator;
  // State field(s) for TextNome widget.
  TextEditingController? textNomeController;
  String? Function(BuildContext, String?)? textNomeControllerValidator;
  // State field(s) for TextCelular widget.
  TextEditingController? textCelularController;
  final textCelularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? textCelularControllerValidator;
  // State field(s) for TextEmail widget.
  TextEditingController? textEmailController;
  String? Function(BuildContext, String?)? textEmailControllerValidator;
  // State field(s) for dataNasc widget.
  TextEditingController? dataNascController;
  final dataNascMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dataNascControllerValidator;
  // State field(s) for DropSexo widget.
  String? dropSexoValue;
  FormFieldController<String>? dropSexoValueController;
  // State field(s) for CheckboxTermo widget.
  bool? checkboxTermoValue;
  // Stores action output result for [Backend Call - API (Rp Atualizar Cliente)] action in Button widget.
  ApiCallResponse? resulAtualizaCliente;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textDocumentoController?.dispose();
    textNomeController?.dispose();
    textCelularController?.dispose();
    textEmailController?.dispose();
    dataNascController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
