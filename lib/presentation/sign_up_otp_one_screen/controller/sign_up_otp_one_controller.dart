import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/sign_up_otp_one_screen/models/sign_up_otp_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpOtpOneScreen.
///
/// This class manages the state of the SignUpOtpOneScreen, including the
/// current signUpOtpOneModelObj
class SignUpOtpOneController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SignUpOtpOneModel> signUpOtpOneModelObj = SignUpOtpOneModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
