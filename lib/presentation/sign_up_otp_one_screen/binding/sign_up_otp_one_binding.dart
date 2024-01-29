import '../controller/sign_up_otp_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpOtpOneScreen.
///
/// This class ensures that the SignUpOtpOneController is created when the
/// SignUpOtpOneScreen is first loaded.
class SignUpOtpOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpOtpOneController());
  }
}
