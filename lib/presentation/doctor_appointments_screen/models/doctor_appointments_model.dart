import '../../../core/app_export.dart';
import 'upcomingappointmentslist_item_model.dart';

/// This class defines the variables used in the [doctor_appointments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DoctorAppointmentsModel {
  Rx<List<UpcomingappointmentslistItemModel>> upcomingappointmentslistItemList =
      Rx([
    UpcomingappointmentslistItemModel(
        bugCountImage: ImageConstant.imgClockTealA7000119x21.obs,
        bugCountText: "Counting Bugs".obs,
        timeText: "10:00 AM - 10:15 AM".obs,
        locationText: "Tuljai Clinic - New Mondha, Oppo...".obs,
        openText: "Open".obs,
        openImage: ImageConstant.imgRectangle2113116x93.obs,
        cancelText: "Cancel".obs)
  ]);
}
