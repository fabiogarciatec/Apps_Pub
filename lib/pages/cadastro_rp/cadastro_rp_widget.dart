import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cadastro_rp_model.dart';
export 'cadastro_rp_model.dart';

class CadastroRpWidget extends StatefulWidget {
  const CadastroRpWidget({Key? key}) : super(key: key);

  @override
  _CadastroRpWidgetState createState() => _CadastroRpWidgetState();
}

class _CadastroRpWidgetState extends State<CadastroRpWidget> {
  late CadastroRpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadastroRpModel());
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFC04E00),
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
            context.pushNamed(
              'login',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 220),
                ),
              },
            );
          },
        ),
        title: Text(
          'Loja Online',
          style: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).primaryBtnText,
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: FlutterFlowWebView(
        content: 'https://raizesmaquinas.fidelimax.com.br/',
        bypass: false,
        height: MediaQuery.sizeOf(context).height * 1.0,
        verticalScroll: true,
        horizontalScroll: true,
      ),
    );
  }
}
