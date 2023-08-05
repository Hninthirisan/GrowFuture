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

class AFormIndoorPlantModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for SoilMultiChoice widget.
  List<String>? soilMultiChoiceValues;
  FormFieldController<List<String>>? soilMultiChoiceValueController;
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for FertilizerMultiChoice widget.
  List<String>? fertilizerMultiChoiceValues;
  FormFieldController<List<String>>? fertilizerMultiChoiceValueController;
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
  // State field(s) for AirflowTxtBox widget.
  TextEditingController? airflowTxtBoxController;
  String? Function(BuildContext, String?)? airflowTxtBoxControllerValidator;
  // State field(s) for LightAmt widget.
  TextEditingController? lightAmtController;
  String? Function(BuildContext, String?)? lightAmtControllerValidator;
  // State field(s) for LightUnit widget.
  String? lightUnitValue;
  FormFieldController<String>? lightUnitValueController;
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
    airflowTxtBoxController?.dispose();
    lightAmtController?.dispose();
    genKnowTxtController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
