import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatYouAccountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for PasswordCasca widget.
  TextEditingController? passwordCascaController;
  late bool passwordCascaVisibility;
  String? Function(BuildContext, String?)? passwordCascaControllerValidator;
  // State field(s) for ConfirmPasswordCasca widget.
  TextEditingController? confirmPasswordCascaController;
  late bool confirmPasswordCascaVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordCascaControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordCascaVisibility = false;
    confirmPasswordCascaVisibility = false;
  }

  void dispose() {
    fullNameController?.dispose();
    emailController?.dispose();
    passwordCascaController?.dispose();
    confirmPasswordCascaController?.dispose();
  }

  /// Additional helper methods are added here.

}
