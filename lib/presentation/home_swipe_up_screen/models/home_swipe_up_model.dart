// import 'doctorreviews_item_model.dart';
// import '../../../core/app_export.dart';
// import 'recentorders_item_model.dart';

// /// This class defines the variables used in the [home_swipe_up_screen],
// /// and is typically used to hold data that is passed between different parts of the application.
// class HomeSwipeUpModel {
//   Rx<List<DoctorreviewsItemModel>> doctorreviewsItemList =
//       Rx(List.generate(4, (index) => DoctorreviewsItemModel()));

//   Rx<List<RecentordersItemModel>> recentordersItemList = Rx([
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle2111.obs,
//         drRohitKanade: "Dr. Rohit Kanade".obs,
//         mDPediatrician: "MD Pediatrician".obs,
//         linkedinImage: ImageConstant.imgLinkedinBlack900.obs,
//         staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
//         time: "10:00 AM - 2 PM".obs,
//         open: "Open".obs),
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle2106.obs,
//         drRohitKanade: "Dr. Aanif Khan".obs,
//         mDPediatrician: "MD Pediatrician".obs,
//         linkedinImage: ImageConstant.imgLinkedinBlack900.obs,
//         staywellClinic: "Tuljai Clinic - Inayat Nagar, Parb...".obs,
//         time: "10:00 AM - 2 PM".obs),
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle2105.obs,
//         drRohitKanade: "Dr. Adnan Khan".obs,
//         mDPediatrician: "MD Cardiology".obs,
//         linkedinImage: ImageConstant.imgLinkedin.obs,
//         staywellClinic: "Khan Clinic - Beside Padela, Vakil...".obs,
//         time: "10:00 AM - 6:00 PM".obs),
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle2104.obs,
//         drRohitKanade: "Dr. Anand Shinde".obs,
//         mDPediatrician: "BDS (Dental Surgeon)".obs,
//         linkedinImage: ImageConstant.imgLinkedinBlack900.obs,
//         staywellClinic: "Tuljai Clinic - New Mondha, Oppo...".obs,
//         time: "10:00 AM - 2:00 PM".obs,
//         open: "Open".obs),
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle2111113x98.obs,
//         drRohitKanade: "Dr. Avinash Kalkote".obs,
//         mDPediatrician: "MD Pediatrician".obs,
//         linkedinImage: ImageConstant.imgLinkedin.obs,
//         staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
//         time: "10:00 AM - 2 PM".obs),
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle21111.obs,
//         drRohitKanade: "Dr. Avinash Kalkote".obs,
//         mDPediatrician: "MD Pediatrician".obs,
//         linkedinImage: ImageConstant.imgLinkedin.obs,
//         staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
//         time: "10:00 AM - 2 PM".obs),
//     RecentordersItemModel(
//         userImage: ImageConstant.imgRectangle21112.obs,
//         drRohitKanade: "Dr. Avinash Kalkote".obs,
//         mDPediatrician: "MD Pediatrician".obs,
//         linkedinImage: ImageConstant.imgLinkedin.obs,
//         staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
//         time: "10:00 AM - 2 PM".obs)
//   ]);
// }
import 'doctorreviews_item_model.dart';
import '../../../core/app_export.dart'
    as app_export; // Add an alias 'as app_export'
import 'recentorders_item_model.dart';

/// This class defines the variables used in the [home_swipe_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeSwipeUpModel {
  app_export.Rx<List<DoctorreviewsItemModel>> doctorreviewsItemList =
      app_export.Rx(List.generate(4, (index) => DoctorreviewsItemModel()));

  app_export.Rx<List<RecentordersItemModel>> recentordersItemList =
      app_export.Rx([
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle2111.obs,
      drRohitKanade: "Dr. Rohit Kanade".obs,
      mDPediatrician: "MD Pediatrician".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedinBlack900.obs,
      staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
      time: "10:00 AM - 2 PM".obs,
      open: "Open".obs,
    ),
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle2106.obs,
      drRohitKanade: "Dr. Aanif Khan".obs,
      mDPediatrician: "MD Pediatrician".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedinBlack900.obs,
      staywellClinic: "Tuljai Clinic - Inayat Nagar, Parb...".obs,
      time: "10:00 AM - 2 PM".obs,
    ),
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle2105.obs,
      drRohitKanade: "Dr. Adnan Khan".obs,
      mDPediatrician: "MD Cardiology".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedin.obs,
      staywellClinic: "Khan Clinic - Beside Padela, Vakil...".obs,
      time: "10:00 AM - 6:00 PM".obs,
    ),
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle2104.obs,
      drRohitKanade: "Dr. Anand Shinde".obs,
      mDPediatrician: "BDS (Dental Surgeon)".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedinBlack900.obs,
      staywellClinic: "Tuljai Clinic - New Mondha, Oppo...".obs,
      time: "10:00 AM - 2:00 PM".obs,
      open: "Open".obs,
    ),
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle2111113x98.obs,
      drRohitKanade: "Dr. Avinash Kalkote".obs,
      mDPediatrician: "MD Pediatrician".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedin.obs,
      staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
      time: "10:00 AM - 2 PM".obs,
    ),
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle21111.obs,
      drRohitKanade: "Dr. Avinash Kalkote".obs,
      mDPediatrician: "MD Pediatrician".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedin.obs,
      staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
      time: "10:00 AM - 2 PM".obs,
    ),
    RecentordersItemModel(
      userImage: app_export.ImageConstant.imgRectangle21112.obs,
      drRohitKanade: "Dr. Avinash Kalkote".obs,
      mDPediatrician: "MD Pediatrician".obs,
      linkedinImage: app_export.ImageConstant.imgLinkedin.obs,
      staywellClinic: "Staywell Clinic - Galaxy Apartmen...".obs,
      time: "10:00 AM - 2 PM".obs,
    )
  ]);
}
