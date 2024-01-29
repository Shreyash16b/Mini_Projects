import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/doctor_document_upload_screen/models/doctor_document_upload_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DoctorDocumentUploadScreen.
///
/// This class manages the state of the DoctorDocumentUploadScreen, including the
/// current doctorDocumentUploadModelObj
class DoctorDocumentUploadController extends GetxController {
  TextEditingController doctorNameController = TextEditingController();

  TextEditingController specializationValueController = TextEditingController();

  TextEditingController qualificationController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  Rx<DoctorDocumentUploadModel> doctorDocumentUploadModelObj =
      DoctorDocumentUploadModel().obs;

  @override
  void onClose() {
    super.onClose();
    doctorNameController.dispose();
    specializationValueController.dispose();
    qualificationController.dispose();
    searchController.dispose();
  }
}
