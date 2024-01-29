import 'package:get/get.dart';

import '../controller/sign_up_success_controller.dart';

/// A binding class for the SignUpSuccessScreen.
///
/// This class ensures that the SignUpSuccessController is created when the
/// SignUpSuccessScreen is first loaded.

class SignUpSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpSuccessController());
  }
}
