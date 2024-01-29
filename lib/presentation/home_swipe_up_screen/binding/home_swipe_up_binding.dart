import 'package:get/get.dart';

import '../controller/home_swipe_up_controller.dart';

/// A binding class for the HomeSwipeUpScreen.
///
/// This class ensures that the HomeSwipeUpController is created when the
/// HomeSwipeUpScreen is first loaded.
class HomeSwipeUpBinding extends Bindings {
  void dependencies() {
    Get.lazyPut(() => HomeSwipeUpController());
  }
}
