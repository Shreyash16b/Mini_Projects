import '../controller/doctor_sign_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoctorSignInScreen.
///
/// This class ensures that the DoctorSignInController is created when the
/// DoctorSignInScreen is first loaded.
class DoctorSignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorSignInController());
  }
}
