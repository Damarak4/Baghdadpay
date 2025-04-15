import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'send_to_other1_widget.dart' show SendToOther1Widget;
import 'package:flutter/material.dart';

class SendToOther1Model extends FlutterFlowModel<SendToOther1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for tid widget.
  FocusNode? tidFocusNode;
  TextEditingController? tidTextController;
  String? Function(BuildContext, String?)? tidTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tidFocusNode?.dispose();
    tidTextController?.dispose();
  }
}
