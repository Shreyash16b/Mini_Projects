import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.userImage,
    this.drAnandShinde,
    this.specializationText,
    this.clinicText,
    this.time,
    this.open,
    this.openText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle2113);
    drAnandShinde = drAnandShinde ?? Rx("Dr. Anand Shinde");
    specializationText = specializationText ?? Rx("BDS (Dental Surgeon)");
    clinicText = clinicText ?? Rx("Tuljai Clinic - New Mondha, Oppo...");
    time = time ?? Rx("10:00 AM - 2:00 PM");
    open = open ?? Rx(ImageConstant.imgTelevisionTealA7000115x45);
    openText = openText ?? Rx("Open");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? drAnandShinde;

  Rx<String>? specializationText;

  Rx<String>? clinicText;

  Rx<String>? time;

  Rx<String>? open;

  Rx<String>? openText;

  Rx<String>? id;
}
