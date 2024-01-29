import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [category_view_sort_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryViewSortOneModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.imgLinkedin.obs,
        userImage1: ImageConstant.imgRectangle21112.obs,
        userName: "Dr. Aanif Khan".obs,
        userText: "MD Pediatrician".obs,
        clinicText: "Tuljai Clinic - Inayat Nagar, Parb...".obs,
        clinicText1: "10:00 AM - 2 PM".obs,
        closedImage: ImageConstant.imgTelevisionRedA200.obs,
        closedText: "Closed".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgLinkedin.obs,
        userImage1: ImageConstant.imgRectangle2111.obs,
        userName: "Dr. Rohit Kanade".obs,
        userText: "MD Pediatrician".obs,
        clinicText: "Staywell Clinic - Galaxy Apartmen...".obs,
        clinicText1: "10:00 AM - 2 PM".obs,
        closedImage: ImageConstant.imgTelevisionTealA7000115x45.obs,
        closedText: "Open".obs)
  ]);
}
