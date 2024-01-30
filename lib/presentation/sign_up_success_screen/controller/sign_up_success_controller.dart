// import 'package:sayali_s_application4/core/app_export.dart';
// import 'package:sayali_s_application4/presentation/sign_up_success_screen/models/sign_up_success_model.dart';
// import 'package:flutter/material.dart';

// /// A controller class for the SignUpSuccessScreen.
// ///
// /// This class manages the state of the SignUpSuccessScreen, including the
// /// current signUpSuccessModelObj
// class SignUpSuccessController extends GetxController {
//   TextEditingController phoneController = TextEditingController();

//   TextEditingController passwordController = TextEditingController();

//   Rx<SignUpSuccessModel> signUpSuccessModelObj = SignUpSuccessModel().obs;

//   Rx<bool> isShowPassword = true.obs;

//   @override
//   void onClose() {
//     super.onClose();
//     phoneController.dispose();
//     passwordController.dispose();
//   }
// }

import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/sign_up_success_screen/models/sign_up_success_model.dart';
import 'package:flutter/material.dart';

class SignUpSuccessController extends GetxController {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<SignUpSuccessModel> signUpSuccessModelObj = SignUpSuccessModel().obs;
  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    passwordController.dispose();
  }
}

class YourWidget extends StatelessWidget {
  final SignUpSuccessController signUpSuccessController =
      Get.put(SignUpSuccessController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          // Use signUpSuccessController here
          return Text(
              signUpSuccessController.signUpSuccessModelObj.value.toString());
        }),
      ),
    );
  }
}
