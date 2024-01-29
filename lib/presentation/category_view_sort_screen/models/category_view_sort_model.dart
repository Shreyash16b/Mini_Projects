import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [category_view_sort_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryViewSortModel {
  Rx<List<UserprofilesectionItemModel>> userprofilesectionItemList = Rx([
    UserprofilesectionItemModel(
        userImage: ImageConstant.imgRectangle2113.obs,
        drAnandShinde: "Dr. Anand Shinde".obs,
        specializationText: "BDS (Dental Surgeon)".obs,
        clinicText: "Tuljai Clinic - New Mondha, Oppo...".obs,
        time: "10:00 AM - 2:00 PM".obs,
        open: ImageConstant.imgTelevisionTealA7000115x45.obs,
        openText: "Open".obs),
    UserprofilesectionItemModel(
        userImage: ImageConstant.imgRectangle2116.obs,
        drAnandShinde: "Dr. Avinash Kalkote".obs,
        specializationText: "MD Medicine".obs,
        time: "10:00 AM - 2 PM".obs,
        open: ImageConstant.imgTelevisionTealA7000115x45.obs,
        openText: "Open".obs)
  ]);
}
