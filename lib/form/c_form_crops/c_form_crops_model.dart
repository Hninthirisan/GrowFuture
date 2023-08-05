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

class CFormCropsModel extends FlutterFlowModel {
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
  // State field(s) for fertilizerunit widget.
  String? fertilizerunitValue;
  FormFieldController<String>? fertilizerunitValueController;
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
  // State field(s) for minPhAmt widget.
  TextEditingController? minPhAmtController;
  String? Function(BuildContext, String?)? minPhAmtControllerValidator;
  // State field(s) for maxPhAmt widget.
  TextEditingController? maxPhAmtController;
  String? Function(BuildContext, String?)? maxPhAmtControllerValidator;
  // State field(s) for NutrientsMultiChoice widget.
  List<String>? nutrientsMultiChoiceValues;
  FormFieldController<List<String>>? nutrientsMultiChoiceValueController;
  // State field(s) for minDepthAmt widget.
  TextEditingController? minDepthAmtController;
  String? Function(BuildContext, String?)? minDepthAmtControllerValidator;
  // State field(s) for maxDepthAmt widget.
  TextEditingController? maxDepthAmtController;
  String? Function(BuildContext, String?)? maxDepthAmtControllerValidator;
  // State field(s) for DepthUnit widget.
  String? depthUnitValue;
  FormFieldController<String>? depthUnitValueController;
  // State field(s) for minMoistureAmt widget.
  TextEditingController? minMoistureAmtController;
  String? Function(BuildContext, String?)? minMoistureAmtControllerValidator;
  // State field(s) for maxmoistureAmt widget.
  TextEditingController? maxmoistureAmtController;
  String? Function(BuildContext, String?)? maxmoistureAmtControllerValidator;
  // State field(s) for minLineSpaceAmt widget.
  TextEditingController? minLineSpaceAmtController;
  String? Function(BuildContext, String?)? minLineSpaceAmtControllerValidator;
  // State field(s) for maxLineSpaceAmt widget.
  TextEditingController? maxLineSpaceAmtController;
  String? Function(BuildContext, String?)? maxLineSpaceAmtControllerValidator;
  // State field(s) for LinespacingUnit widget.
  String? linespacingUnitValue;
  FormFieldController<String>? linespacingUnitValueController;
  // State field(s) for cropMultiChoice widget.
  List<String>? cropMultiChoiceValues;
  FormFieldController<List<String>>? cropMultiChoiceValueController;
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
    minPhAmtController?.dispose();
    maxPhAmtController?.dispose();
    minDepthAmtController?.dispose();
    maxDepthAmtController?.dispose();
    minMoistureAmtController?.dispose();
    maxmoistureAmtController?.dispose();
    minLineSpaceAmtController?.dispose();
    maxLineSpaceAmtController?.dispose();
    genKnowTxtController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
