import '../../../core/app_export.dart';

/// This class is used in the [upcomingappointmentslist_item_widget] screen.
class UpcomingappointmentslistItemModel {
  UpcomingappointmentslistItemModel({
    this.bugCountImage,
    this.bugCountText,
    this.timeText,
    this.locationText,
    this.openText,
    this.openImage,
    this.cancelText,
    this.id,
  }) {
    bugCountImage = bugCountImage ?? Rx(ImageConstant.imgClockTealA7000119x21);
    bugCountText = bugCountText ?? Rx("Counting Bugs");
    timeText = timeText ?? Rx("10:00 AM - 10:15 AM");
    locationText = locationText ?? Rx("Tuljai Clinic - New Mondha, Oppo...");
    openText = openText ?? Rx("Open");
    openImage = openImage ?? Rx(ImageConstant.imgRectangle2113116x93);
    cancelText = cancelText ?? Rx("Cancel");
    id = id ?? Rx("");
  }

  Rx<String>? bugCountImage;

  Rx<String>? bugCountText;

  Rx<String>? timeText;

  Rx<String>? locationText;

  Rx<String>? openText;

  Rx<String>? openImage;

  Rx<String>? cancelText;

  Rx<String>? id;
}
