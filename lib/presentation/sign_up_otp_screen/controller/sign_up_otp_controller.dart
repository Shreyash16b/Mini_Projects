import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/sign_up_otp_screen/models/sign_up_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  void someMethod() {}
}

class SignUpOtpController extends GetxController with CodeAutoFill {
  final otpController = TextEditingController().obs;
  final signUpOtpModelObj = SignUpOtpModel().obs;

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void codeUpdated() {
    // This method is required by the CodeAutoFill mixin
    // It's invoked when the code is manually updated
  }
  void onCodeFilled(String code) {
    // This callback is invoked when the code is automatically filled
    otpController.value.text = code;
  }
}

void main() {
  // Instantiate your SignUpController here if needed
  SignUpController signUpController = Get.put(SignUpController());

  // Instantiate your SignUpOtpController using Get.lazyPut
  Get.lazyPut<SignUpOtpController>(() => SignUpOtpController());

  // Delay the retrieval of the SignUpOtpController until the initialization is complete
  Future.delayed(Duration.zero, () {
    // Retrieve the SignUpOtpController
    SignUpOtpController signUpOtpController = Get.find<SignUpOtpController>();

    // Now you can use signUpOtpController in your code
    signUpOtpController.codeUpdated();
  });

  signUpController.someMethod();
}
