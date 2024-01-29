import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';

/// This class defines the variables used in the [category_view_criteria_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryViewCriteriaModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        userImage: ImageConstant.imgRectangle2113.obs,
        doctorName: "Dr. Anand Shinde".obs,
        doctorImage: ImageConstant.imgFavoriteGray400.obs,
        thumbsUpImage: ImageConstant.imgThumbsUpTealA70001.obs,
        doctorSpecialization: "BDS (Dental Surgeon)".obs,
        televisionImage: ImageConstant.imgTelevisionTealA70001.obs,
        clinicName: "Tuljai Clinic - New Mondha, Oppo...".obs,
        clinicTiming: ImageConstant.imgClockTealA70001.obs,
        clinicTimingText: "10:00 AM - 2:00 PM".obs,
        openImage: ImageConstant.imgTelevisionTealA7000115x45.obs,
        openText: "Open".obs),
    Userprofile2ItemModel(
        userImage: ImageConstant.imgRectangle2116.obs,
        doctorName: "Dr. Avinash Kalkote".obs,
        doctorImage: ImageConstant.imgFavoriteGray400.obs,
        thumbsUpImage: ImageConstant.imgThumbsUpTealA70001.obs,
        doctorSpecialization: "MD Medicine".obs,
        televisionImage: ImageConstant.imgTelevisionTealA70001.obs,
        clinicTiming: ImageConstant.imgClockTealA70001.obs,
        clinicTimingText: "10:00 AM - 2 PM".obs,
        openImage: ImageConstant.imgTelevisionTealA7000115x45.obs,
        openText: "Open".obs)
  ]);
}
