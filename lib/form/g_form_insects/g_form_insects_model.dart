import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GFormInsectsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Occurance widget.
  String? occuranceValue;
  FormFieldController<String>? occuranceValueController;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for Txint widget.
  TextEditingController? txintController;
  String? Function(BuildContext, String?)? txintControllerValidator;
  // State field(s) for TxUnit widget.
  String? txUnitValue;
  FormFieldController<String>? txUnitValueController;
  // State field(s) for TxAmt widget.
  TextEditingController? txAmtController;
  String? Function(BuildContext, String?)? txAmtControllerValidator;
  // State field(s) for IndoorMultChoice widget.
  List<String>? indoorMultChoiceValues;
  FormFieldController<List<String>>? indoorMultChoiceValueController;
  // State field(s) for OutdoorMultChoice widget.
  List<String>? outdoorMultChoiceValues;
  FormFieldController<List<String>>? outdoorMultChoiceValueController;
  // State field(s) for CropMultChoice widget.
  List<String>? cropMultChoiceValues;
  FormFieldController<List<String>>? cropMultChoiceValueController;
  // State field(s) for VegeMultChoice widget.
  List<String>? vegeMultChoiceValues;
  FormFieldController<List<String>>? vegeMultChoiceValueController;
  // State field(s) for FruitMultChoice widget.
  List<String>? fruitMultChoiceValues;
  FormFieldController<List<String>>? fruitMultChoiceValueController;
  // State field(s) for PesticideMultChoice widget.
  List<String>? pesticideMultChoiceValues;
  FormFieldController<List<String>>? pesticideMultChoiceValueController;
  // State field(s) for weatherMultiChoice widget.
  List<String>? weatherMultiChoiceValues;
  FormFieldController<List<String>>? weatherMultiChoiceValueController;
  // State field(s) for GenKnowTxt widget.
  TextEditingController? genKnowTxtController;
  String? Function(BuildContext, String?)? genKnowTxtControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    txintController?.dispose();
    txAmtController?.dispose();
    genKnowTxtController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
