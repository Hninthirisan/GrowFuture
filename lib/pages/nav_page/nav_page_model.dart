import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/component/power_home/power_home_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PowerHome component.
  late PowerHomeModel powerHomeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    powerHomeModel = createModel(context, () => PowerHomeModel());
  }

  void dispose() {
    unfocusNode.dispose();
    powerHomeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
