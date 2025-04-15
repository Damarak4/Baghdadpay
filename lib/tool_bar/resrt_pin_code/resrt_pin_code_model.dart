import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'resrt_pin_code_widget.dart' show ResrtPinCodeWidget;
import 'package:flutter/material.dart';

class ResrtPinCodeModel extends FlutterFlowModel<ResrtPinCodeWidget> {
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
