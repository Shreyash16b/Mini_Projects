import '../controller/sign_up_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpFormScreen.
///
/// This class ensures that the SignUpFormController is created when the
/// SignUpFormScreen is first loaded.
class SignUpFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpFormController());
  }
}
