import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DFormVegetablesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for SoilMultChoice widget.
  List<String>? soilMultChoiceValues;
  FormFieldController<List<String>>? soilMultChoiceValueController;
  // State field(s) for wateringInt widget.
  TextEditingController? wateringIntController;
  String? Function(BuildContext, String?)? wateringIntControllerValidator;
  // State field(s) for wateringTimeUnit widget.
  String? wateringTimeUnitValue;
  FormFieldController<String>? wateringTimeUnitValueController;
  // State field(s) for WateringAmt widget.
  TextEditingController? wateringAmtController;
  String? Function(BuildContext, String?)? wateringAmtControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for FertilizingintUnit widget.
  String? fertilizingintUnitValue;
  FormFieldController<String>? fertilizingintUnitValueController;
  // State field(s) for FertilizersMultChoice widget.
  List<String>? fertilizersMultChoiceValues;
  FormFieldController<List<String>>? fertilizersMultChoiceValueController;
  // State field(s) for InsectsMultiChoice widget.
  List<String>? insectsMultiChoiceValues;
  FormFieldController<List<String>>? insectsMultiChoiceValueController;
  // State field(s) for CaringIntAmt widget.
  TextEditingController? caringIntAmtController;
  String? Function(BuildContext, String?)? caringIntAmtControllerValidator;
  // State field(s) for CaringIntUnit widget.
  String? caringIntUnitValue;
  FormFieldController<String>? caringIntUnitValueController;
  // State field(s) for minTAmt widget.
  TextEditingController? minTAmtController;
  String? Function(BuildContext, String?)? minTAmtControllerValidator;
  // State field(s) for maxTAmt widget.
  TextEditingController? maxTAmtController;
  String? Function(BuildContext, String?)? maxTAmtControllerValidator;
  // State field(s) for weatherMultiChoice widget.
  List<String>? weatherMultiChoiceValues;
  FormFieldController<List<String>>? weatherMultiChoiceValueController;
  // State field(s) for minpHAmt widget.
  TextEditingController? minpHAmtController;
  String? Function(BuildContext, String?)? minpHAmtControllerValidator;
  // State field(s) for maxpHAmt widget.
  TextEditingController? maxpHAmtController;
  String? Function(BuildContext, String?)? maxpHAmtControllerValidator;
  // State field(s) for NutrientsMultiChoice widget.
  List<String>? nutrientsMultiChoiceValues;
  FormFieldController<List<String>>? nutrientsMultiChoiceValueController;
  // State field(s) for mindepthAmt widget.
  TextEditingController? mindepthAmtController;
  String? Function(BuildContext, String?)? mindepthAmtControllerValidator;
  // State field(s) for maxdepthAmt widget.
  TextEditingController? maxdepthAmtController;
  String? Function(BuildContext, String?)? maxdepthAmtControllerValidator;
  // State field(s) for depthUnit widget.
  String? depthUnitValue;
  FormFieldController<String>? depthUnitValueController;
  // State field(s) for minmoistureAmt widget.
  TextEditingController? minmoistureAmtController;
  String? Function(BuildContext, String?)? minmoistureAmtControllerValidator;
  // State field(s) for maxmoistureAmt widget.
  TextEditingController? maxmoistureAmtController;
  String? Function(BuildContext, String?)? maxmoistureAmtControllerValidator;
  // State field(s) for minLinespaceAmt widget.
  TextEditingController? minLinespaceAmtController;
  String? Function(BuildContext, String?)? minLinespaceAmtControllerValidator;
  // State field(s) for maxLinespaceAmt widget.
  TextEditingController? maxLinespaceAmtController;
  String? Function(BuildContext, String?)? maxLinespaceAmtControllerValidator;
  // State field(s) for linespacingUnit widget.
  String? linespacingUnitValue;
  FormFieldController<String>? linespacingUnitValueController;
  // State field(s) for VegeMultiChoice widget.
  List<String>? vegeMultiChoiceValues;
  FormFieldController<List<String>>? vegeMultiChoiceValueController;
  // State field(s) for GenKnowTxt widget.
  TextEditingController? genKnowTxtController;
  String? Function(BuildContext, String?)? genKnowTxtControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    wateringIntController?.dispose();
    wateringAmtController?.dispose();
    textController3?.dispose();
    caringIntAmtController?.dispose();
    minTAmtController?.dispose();
    maxTAmtController?.dispose();
    minpHAmtController?.dispose();
    maxpHAmtController?.dispose();
    mindepthAmtController?.dispose();
    maxdepthAmtController?.dispose();
    minmoistureAmtController?.dispose();
    maxmoistureAmtController?.dispose();
    minLinespaceAmtController?.dispose();
    maxLinespaceAmtController?.dispose();
    genKnowTxtController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
