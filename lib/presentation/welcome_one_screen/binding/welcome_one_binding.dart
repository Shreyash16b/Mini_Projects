import '../controller/welcome_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WelcomeOneScreen.
///
/// This class ensures that the WelcomeOneController is created when the
/// WelcomeOneScreen is first loaded.
class WelcomeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeOneController());
  }
}
