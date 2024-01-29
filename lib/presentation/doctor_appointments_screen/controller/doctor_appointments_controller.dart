import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/doctor_appointments_screen/models/doctor_appointments_model.dart';

/// A controller class for the DoctorAppointmentsScreen.
///
/// This class manages the state of the DoctorAppointmentsScreen, including the
/// current doctorAppointmentsModelObj
class DoctorAppointmentsController extends GetxController {
  Rx<DoctorAppointmentsModel> doctorAppointmentsModelObj =
      DoctorAppointmentsModel().obs;
}
