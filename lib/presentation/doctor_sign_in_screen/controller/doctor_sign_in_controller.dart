import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/doctor_sign_in_screen/models/doctor_sign_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DoctorSignInScreen.
///
/// This class manages the state of the DoctorSignInScreen, including the
/// current doctorSignInModelObj
class DoctorSignInController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  Rx<DoctorSignInModel> doctorSignInModelObj = DoctorSignInModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
    editTextController.dispose();
  }
}
