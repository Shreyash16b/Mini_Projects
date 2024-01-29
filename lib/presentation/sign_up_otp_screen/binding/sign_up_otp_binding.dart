import 'package:get/get.dart';

import '../controller/sign_up_otp_controller.dart';

/// A binding class for the SignUpOtpScreen.
///
/// This class ensures that the SignUpOtpController is created when the
/// SignUpOtpScreen is first loaded.

class SignUpOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpOtpController());
  }
}
