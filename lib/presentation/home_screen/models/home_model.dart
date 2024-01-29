import 'view_item_model.dart';
import '../../../core/app_export.dart';
import 'home_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ViewItemModel>> viewItemList =
      Rx(List.generate(3, (index) => ViewItemModel()));

  Rx<List<HomeItemModel>> homeItemList = Rx([
    HomeItemModel(
        cardiologistImage: ImageConstant.imgTelevisionPrimary.obs,
        cardiologistText: "Cardiologist".obs),
    HomeItemModel(
        cardiologistImage: ImageConstant.imgMaximizePrimary.obs,
        cardiologistText: "Orthopaedic".obs),
    HomeItemModel(
        cardiologistImage: ImageConstant.imgSettingsPrimary.obs,
        cardiologistText: "Dentist".obs),
    HomeItemModel(
        cardiologistImage: ImageConstant.imgClock.obs,
        cardiologistText: "Chest".obs)
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle2104.obs,
        drAnandShinde: "Dr. Anand Shinde".obs,
        bDSDentalSurgeon: "BDS (Dental Surgeon)".obs,
        signalImage5: ImageConstant.imgSignalErrorcontainer.obs,
        tuljaiClinic: "Tuljai Clinic - New Mondha, Opp...".obs,
        time: "10:00 AM - 2:00 PM".obs,
        open: "Open".obs)
  ]);
}
