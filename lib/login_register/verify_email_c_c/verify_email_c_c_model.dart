import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verify_email_c_c_widget.dart' show VerifyEmailCCWidget;
import 'package:flutter/material.dart';

class VerifyEmailCCModel extends FlutterFlowModel<VerifyEmailCCWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
