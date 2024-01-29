import '../controller/doctor_hospital_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoctorHospitalDetailScreen.
///
/// This class ensures that the DoctorHospitalDetailController is created when the
/// DoctorHospitalDetailScreen is first loaded.
class DoctorHospitalDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorHospitalDetailController());
  }
}
