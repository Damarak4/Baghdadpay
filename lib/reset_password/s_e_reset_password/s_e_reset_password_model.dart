import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 's_e_reset_password_widget.dart' show SEResetPasswordWidget;
import 'package:flutter/material.dart';

class SEResetPasswordModel extends FlutterFlowModel<SEResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RP_Email widget.
  FocusNode? rPEmailFocusNode;
  TextEditingController? rPEmailTextController;
  String? Function(BuildContext, String?)? rPEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rPEmailFocusNode?.dispose();
    rPEmailTextController?.dispose();
  }
}
