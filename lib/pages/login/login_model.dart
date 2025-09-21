import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Signup-EmailAddressField widget.
  FocusNode? signupEmailAddressFieldFocusNode;
  TextEditingController? signupEmailAddressFieldTextController;
  String? Function(BuildContext, String?)?
      signupEmailAddressFieldTextControllerValidator;
  String? _signupEmailAddressFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email Address  is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Not a valid email';
    }
    return null;
  }

  // State field(s) for Signup-PasswordField widget.
  FocusNode? signupPasswordFieldFocusNode;
  TextEditingController? signupPasswordFieldTextController;
  late bool signupPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordFieldTextControllerValidator;
  String? _signupPasswordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Not enough characters. Must be at least 7';
    }

    return null;
  }

  // State field(s) for Signup-ConfirmPasswordField widget.
  FocusNode? signupConfirmPasswordFieldFocusNode;
  TextEditingController? signupConfirmPasswordFieldTextController;
  late bool signupConfirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      signupConfirmPasswordFieldTextControllerValidator;
  String? _signupConfirmPasswordFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password... is required';
    }

    if (val.length < 7) {
      return 'Not enough characters. Must be at least 7';
    }

    return null;
  }

  // State field(s) for Login-EmailField widget.
  FocusNode? loginEmailFieldFocusNode;
  TextEditingController? loginEmailFieldTextController;
  String? Function(BuildContext, String?)?
      loginEmailFieldTextControllerValidator;
  // State field(s) for Login-PasswordField widget.
  FocusNode? loginPasswordFieldFocusNode;
  TextEditingController? loginPasswordFieldTextController;
  late bool loginPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      loginPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupEmailAddressFieldTextControllerValidator =
        _signupEmailAddressFieldTextControllerValidator;
    signupPasswordFieldVisibility = false;
    signupPasswordFieldTextControllerValidator =
        _signupPasswordFieldTextControllerValidator;
    signupConfirmPasswordFieldVisibility = false;
    signupConfirmPasswordFieldTextControllerValidator =
        _signupConfirmPasswordFieldTextControllerValidator;
    loginPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupEmailAddressFieldFocusNode?.dispose();
    signupEmailAddressFieldTextController?.dispose();

    signupPasswordFieldFocusNode?.dispose();
    signupPasswordFieldTextController?.dispose();

    signupConfirmPasswordFieldFocusNode?.dispose();
    signupConfirmPasswordFieldTextController?.dispose();

    loginEmailFieldFocusNode?.dispose();
    loginEmailFieldTextController?.dispose();

    loginPasswordFieldFocusNode?.dispose();
    loginPasswordFieldTextController?.dispose();
  }
}
