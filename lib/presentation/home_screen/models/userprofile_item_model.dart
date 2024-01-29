import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.drAnandShinde,
    this.bDSDentalSurgeon,
    this.signalImage5,
    this.tuljaiClinic,
    this.time,
    this.open,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle2104);
    drAnandShinde = drAnandShinde ?? Rx("Dr. Anand Shinde");
    bDSDentalSurgeon = bDSDentalSurgeon ?? Rx("BDS (Dental Surgeon)");
    signalImage5 = signalImage5 ?? Rx(ImageConstant.imgSignalErrorcontainer);
    tuljaiClinic = tuljaiClinic ?? Rx("Tuljai Clinic - New Mondha, Opp...");
    time = time ?? Rx("10:00 AM - 2:00 PM");
    open = open ?? Rx("Open");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? drAnandShinde;

  Rx<String>? bDSDentalSurgeon;

  Rx<String>? signalImage5;

  Rx<String>? tuljaiClinic;

  Rx<String>? time;

  Rx<String>? open;

  Rx<String>? id;
}
