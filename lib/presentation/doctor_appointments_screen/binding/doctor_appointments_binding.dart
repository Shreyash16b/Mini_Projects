import '../controller/doctor_appointments_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoctorAppointmentsScreen.
///
/// This class ensures that the DoctorAppointmentsController is created when the
/// DoctorAppointmentsScreen is first loaded.
class DoctorAppointmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorAppointmentsController());
  }
}
