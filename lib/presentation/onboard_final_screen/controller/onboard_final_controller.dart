import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/onboard_final_screen/models/onboard_final_model.dart';

/// A controller class for the OnboardFinalScreen.
///
/// This class manages the state of the OnboardFinalScreen, including the
/// current onboardFinalModelObj
class OnboardFinalController extends GetxController {
  Rx<OnboardFinalModel> onboardFinalModelObj = OnboardFinalModel().obs;
}
