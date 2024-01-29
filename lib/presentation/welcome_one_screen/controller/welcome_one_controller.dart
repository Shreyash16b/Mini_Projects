import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/welcome_one_screen/models/welcome_one_model.dart';

/// A controller class for the WelcomeOneScreen.
///
/// This class manages the state of the WelcomeOneScreen, including the
/// current welcomeOneModelObj
class WelcomeOneController extends GetxController {
  Rx<WelcomeOneModel> welcomeOneModelObj = WelcomeOneModel().obs;
}
