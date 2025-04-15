import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'e_mail_login_widget.dart' show EMailLoginWidget;
import 'package:flutter/material.dart';

class EMailLoginModel extends FlutterFlowModel<EMailLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for log_Email widget.
  FocusNode? logEmailFocusNode;
  TextEditingController? logEmailTextController;
  String? Function(BuildContext, String?)? logEmailTextControllerValidator;
  // State field(s) for log_Password widget.
  FocusNode? logPasswordFocusNode;
  TextEditingController? logPasswordTextController;
  late bool logPasswordVisibility;
  String? Function(BuildContext, String?)? logPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logPasswordVisibility = false;
  }

  @override
  void dispose() {
    logEmailFocusNode?.dispose();
    logEmailTextController?.dispose();

    logPasswordFocusNode?.dispose();
    logPasswordTextController?.dispose();
  }
}
