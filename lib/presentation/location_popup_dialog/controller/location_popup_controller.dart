import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/location_popup_dialog/models/location_popup_model.dart';

/// A controller class for the LocationPopupDialog.
///
/// This class manages the state of the LocationPopupDialog, including the
/// current locationPopupModelObj
class LocationPopupController extends GetxController {
  Rx<LocationPopupModel> locationPopupModelObj = LocationPopupModel().obs;
}
