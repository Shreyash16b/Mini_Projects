import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userImage,
    this.userImage1,
    this.userName,
    this.userText,
    this.clinicText,
    this.clinicText1,
    this.closedImage,
    this.closedText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgLinkedin);
    userImage1 = userImage1 ?? Rx(ImageConstant.imgRectangle21112);
    userName = userName ?? Rx("Dr. Aanif Khan");
    userText = userText ?? Rx("MD Pediatrician");
    clinicText = clinicText ?? Rx("Tuljai Clinic - Inayat Nagar, Parb...");
    clinicText1 = clinicText1 ?? Rx("10:00 AM - 2 PM");
    closedImage = closedImage ?? Rx(ImageConstant.imgTelevisionRedA200);
    closedText = closedText ?? Rx("Closed");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userImage1;

  Rx<String>? userName;

  Rx<String>? userText;

  Rx<String>? clinicText;

  Rx<String>? clinicText1;

  Rx<String>? closedImage;

  Rx<String>? closedText;

  Rx<String>? id;
}
