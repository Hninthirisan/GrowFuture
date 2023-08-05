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

class FFormFertilizersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for organicornot widget.
  String? organicornotValue;
  FormFieldController<String>? organicornotValueController;
  // State field(s) for SoilMultiChoice widget.
  List<String>? soilMultiChoiceValues;
  FormFieldController<List<String>>? soilMultiChoiceValueController;
  // State field(s) for nutrientMultiChoice widget.
  List<String>? nutrientMultiChoiceValues;
  FormFieldController<List<String>>? nutrientMultiChoiceValueController;
  // State field(s) for txinterval widget.
  TextEditingController? txintervalController;
  String? Function(BuildContext, String?)? txintervalControllerValidator;
  // State field(s) for TxTimeUnit widget.
  String? txTimeUnitValue;
  FormFieldController<String>? txTimeUnitValueController;
  // State field(s) for WateringAmt widget.
  TextEditingController? wateringAmtController;
  String? Function(BuildContext, String?)? wateringAmtControllerValidator;
  // State field(s) for indoorMultChoice widget.
  List<String>? indoorMultChoiceValues;
  FormFieldController<List<String>>? indoorMultChoiceValueController;
  // State field(s) for outdoorMultChoice widget.
  List<String>? outdoorMultChoiceValues;
  FormFieldController<List<String>>? outdoorMultChoiceValueController;
  // State field(s) for CropsMultChoice widget.
  List<String>? cropsMultChoiceValues;
  FormFieldController<List<String>>? cropsMultChoiceValueController;
  // State field(s) for VegetableMultChoice widget.
  List<String>? vegetableMultChoiceValues;
  FormFieldController<List<String>>? vegetableMultChoiceValueController;
  // State field(s) for FruitsMultChoice widget.
  List<String>? fruitsMultChoiceValues;
  FormFieldController<List<String>>? fruitsMultChoiceValueController;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for minTAmt widget.
  TextEditingController? minTAmtController;
  String? Function(BuildContext, String?)? minTAmtControllerValidator;
  // State field(s) for maxTAmt widget.
  TextEditingController? maxTAmtController;
  String? Function(BuildContext, String?)? maxTAmtControllerValidator;
  // State field(s) for RecoveryMethods widget.
  TextEditingController? recoveryMethodsController;
  String? Function(BuildContext, String?)? recoveryMethodsControllerValidator;
  // State field(s) for KeepingProcedureTxt widget.
  TextEditingController? keepingProcedureTxtController;
  String? Function(BuildContext, String?)?
      keepingProcedureTxtControllerValidator;
  // State field(s) for GenKnowTxt widget.
  TextEditingController? genKnowTxtController;
  String? Function(BuildContext, String?)? genKnowTxtControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txintervalController?.dispose();
    wateringAmtController?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    minTAmtController?.dispose();
    maxTAmtController?.dispose();
    recoveryMethodsController?.dispose();
    keepingProcedureTxtController?.dispose();
    genKnowTxtController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
