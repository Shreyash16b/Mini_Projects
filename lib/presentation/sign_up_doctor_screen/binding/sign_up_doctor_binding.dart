import '../controller/sign_up_doctor_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpDoctorScreen.
///
/// This class ensures that the SignUpDoctorController is created when the
/// SignUpDoctorScreen is first loaded.
class SignUpDoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpDoctorController());
  }
}
