import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/home_swipe_up_screen/models/home_swipe_up_model.dart';

/// A controller class for the HomeSwipeUpScreen.
///
/// This class manages the state of the HomeSwipeUpScreen, including the
/// current homeSwipeUpModelObj
class HomeSwipeUpController extends GetxController {
  Rx<HomeSwipeUpModel> homeSwipeUpModelObj = HomeSwipeUpModel().obs;
}
