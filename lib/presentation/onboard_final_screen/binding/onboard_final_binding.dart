import '../controller/onboard_final_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardFinalScreen.
///
/// This class ensures that the OnboardFinalController is created when the
/// OnboardFinalScreen is first loaded.
class OnboardFinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardFinalController());
  }
}
