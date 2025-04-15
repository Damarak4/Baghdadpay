import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'e_mail_register_widget.dart' show EMailRegisterWidget;
import 'package:flutter/material.dart';

class EMailRegisterModel extends FlutterFlowModel<EMailRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Gen widget.
  String? genValue;
  FormFieldController<String>? genValueController;
  // State field(s) for EnterType widget.
  String? enterTypeValue;
  FormFieldController<String>? enterTypeValueController;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
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
  // Stores action output result for [Custom Action - validateFullName] action in SingUpB widget.
  bool? namev;
  // Stores action output result for [Custom Action - validateUniversityEmail] action in SingUpB widget.
  bool? mailv;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    rePasswordVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    rePasswordFocusNode?.dispose();
    rePasswordTextController?.dispose();
  }
}
