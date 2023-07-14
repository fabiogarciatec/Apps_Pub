import '/components/alt_nav_2/alt_nav2_widget.dart';
import '/components/message_bottom_sheet/message_bottom_sheet_widget.dart';
import '/components/mobile_nav/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamMembersClientsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for altNav_2 component.
  late AltNav2Model altNav2Model;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    altNav2Model = createModel(context, () => AltNav2Model());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    altNav2Model.dispose();
    mobileNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
