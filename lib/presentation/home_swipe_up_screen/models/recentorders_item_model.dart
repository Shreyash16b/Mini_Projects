import '../../../core/app_export.dart';

/// This class is used in the [recentorders_item_widget] screen.
class RecentordersItemModel {
  RecentordersItemModel({
    this.userImage,
    this.drRohitKanade,
    this.mDPediatrician,
    this.linkedinImage,
    this.staywellClinic,
    this.time,
    this.open,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgRectangle2111);
    drRohitKanade = drRohitKanade ?? Rx("Dr. Rohit Kanade");
    mDPediatrician = mDPediatrician ?? Rx("MD Pediatrician");
    linkedinImage = linkedinImage ?? Rx(ImageConstant.imgLinkedinBlack900);
    staywellClinic =
        staywellClinic ?? Rx("Staywell Clinic - Galaxy Apartmen...");
    time = time ?? Rx("10:00 AM - 2 PM");
    open = open ?? Rx("Open");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? drRohitKanade;

  Rx<String>? mDPediatrician;

  Rx<String>? linkedinImage;

  Rx<String>? staywellClinic;

  Rx<String>? time;

  Rx<String>? open;

  Rx<String>? id;
}
