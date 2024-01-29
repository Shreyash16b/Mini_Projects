import '../../../core/app_export.dart';
import 'userprofilerow_item_model.dart';

/// This class defines the variables used in the [category_view_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryViewModel {
  Rx<List<UserprofilerowItemModel>> userprofilerowItemList = Rx([
    UserprofilerowItemModel(
        userImage: ImageConstant.imgRectangle2113.obs,
        drAnandShinde: "Dr. Anand Shinde".obs,
        favoriteImage: ImageConstant.imgFavoriteRedA200.obs,
        thumbsUpImage: ImageConstant.imgThumbsUpTealA70001.obs,
        bDSDentalSurgeon: "BDS (Dental Surgeon)".obs,
        televisionImage: ImageConstant.imgTelevisionTealA70001.obs,
        tuljaiClinic: "Tuljai Clinic - New Mondha, Oppo...".obs,
        clockImage: ImageConstant.imgClockTealA70001.obs,
        time: "10:00 AM - 2:00 PM".obs,
        openText: "Open".obs),
    UserprofilerowItemModel(
        userImage: ImageConstant.imgRectangle21112.obs,
        televisionImage: ImageConstant.imgTelevisionTealA70001.obs,
        tuljaiClinic: "Tuljai Clinic - Inayat Nagar, Parb...".obs),
    UserprofilerowItemModel(
        userImage: ImageConstant.imgRectangle2116.obs,
        drAnandShinde: "Dr. Avinash Kalkote".obs,
        favoriteImage: ImageConstant.imgFavoriteGray400.obs,
        thumbsUpImage: ImageConstant.imgThumbsUpTealA70001.obs,
        bDSDentalSurgeon: "MD Medicine".obs,
        televisionImage: ImageConstant.imgTelevisionTealA70001.obs,
        clockImage: ImageConstant.imgClockTealA70001.obs,
        time: "10:00 AM - 2 PM".obs)
  ]);
}
