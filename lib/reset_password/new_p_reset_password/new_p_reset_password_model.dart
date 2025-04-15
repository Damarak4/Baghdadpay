import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_p_reset_password_widget.dart' show NewPResetPasswordWidget;
import 'package:flutter/material.dart';

class NewPResetPasswordModel extends FlutterFlowModel<NewPResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for Re-Password widget.
  FocusNode? rePasswordFocusNode;
  TextEditingController? rePasswordTextController;
  late bool rePasswordVisibility;
  String? Function(BuildContext, String?)? rePasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    rePasswordVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    rePasswordFocusNode?.dispose();
    rePasswordTextController?.dispose();
  }
}
