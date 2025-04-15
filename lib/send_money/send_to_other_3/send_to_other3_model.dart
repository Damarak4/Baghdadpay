import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'send_to_other3_widget.dart' show SendToOther3Widget;
import 'package:flutter/material.dart';

class SendToOther3Model extends FlutterFlowModel<SendToOther3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
