import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.userImage,
    this.doctorName,
    this.doctorImage,
    this.thumbsUpImage,
    this.doctorSpecialization,
    this.televisionImage,
    this.clinicName,
    this.clinicTiming,
    this.clinicTimingText,
    this.openImage,
    this.openText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle2113);
    doctorName = doctorName ?? Rx("Dr. Anand Shinde");
    doctorImage = doctorImage ?? Rx(ImageConstant.imgFavoriteGray400);
    thumbsUpImage = thumbsUpImage ?? Rx(ImageConstant.imgThumbsUpTealA70001);
    doctorSpecialization = doctorSpecialization ?? Rx("BDS (Dental Surgeon)");
    televisionImage =
        televisionImage ?? Rx(ImageConstant.imgTelevisionTealA70001);
    clinicName = clinicName ?? Rx("Tuljai Clinic - New Mondha, Oppo...");
    clinicTiming = clinicTiming ?? Rx(ImageConstant.imgClockTealA70001);
    clinicTimingText = clinicTimingText ?? Rx("10:00 AM - 2:00 PM");
    openImage = openImage ?? Rx(ImageConstant.imgTelevisionTealA7000115x45);
    openText = openText ?? Rx("Open");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? doctorName;

  Rx<String>? doctorImage;

  Rx<String>? thumbsUpImage;

  Rx<String>? doctorSpecialization;

  Rx<String>? televisionImage;

  Rx<String>? clinicName;

  Rx<String>? clinicTiming;

  Rx<String>? clinicTimingText;

  Rx<String>? openImage;

  Rx<String>? openText;

  Rx<String>? id;
}
