import '../../../core/app_export.dart';

/// This class is used in the [userprofilerow_item_widget] screen.
class UserprofilerowItemModel {
  UserprofilerowItemModel({
    this.userImage,
    this.drAnandShinde,
    this.favoriteImage,
    this.thumbsUpImage,
    this.bDSDentalSurgeon,
    this.televisionImage,
    this.tuljaiClinic,
    this.clockImage,
    this.time,
    this.openText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle2113);
    drAnandShinde = drAnandShinde ?? Rx("Dr. Anand Shinde");
    favoriteImage = favoriteImage ?? Rx(ImageConstant.imgFavoriteRedA200);
    thumbsUpImage = thumbsUpImage ?? Rx(ImageConstant.imgThumbsUpTealA70001);
    bDSDentalSurgeon = bDSDentalSurgeon ?? Rx("BDS (Dental Surgeon)");
    televisionImage =
        televisionImage ?? Rx(ImageConstant.imgTelevisionTealA70001);
    tuljaiClinic = tuljaiClinic ?? Rx("Tuljai Clinic - New Mondha, Oppo...");
    clockImage = clockImage ?? Rx(ImageConstant.imgClockTealA70001);
    time = time ?? Rx("10:00 AM - 2:00 PM");
    openText = openText ?? Rx("Open");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? drAnandShinde;

  Rx<String>? favoriteImage;

  Rx<String>? thumbsUpImage;

  Rx<String>? bDSDentalSurgeon;

  Rx<String>? televisionImage;

  Rx<String>? tuljaiClinic;

  Rx<String>? clockImage;

  Rx<String>? time;

  Rx<String>? openText;

  Rx<String>? id;
}
