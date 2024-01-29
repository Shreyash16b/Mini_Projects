import '../controller/doctor_document_upload_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoctorDocumentUploadScreen.
///
/// This class ensures that the DoctorDocumentUploadController is created when the
/// DoctorDocumentUploadScreen is first loaded.
class DoctorDocumentUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorDocumentUploadController());
  }
}
