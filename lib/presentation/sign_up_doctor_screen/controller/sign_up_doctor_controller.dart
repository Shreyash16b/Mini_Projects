import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/sign_up_doctor_screen/models/sign_up_doctor_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpDoctorScreen.
///
/// This class manages the state of the SignUpDoctorScreen, including the
/// current signUpDoctorModelObj
class SignUpDoctorController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController passwordInputController = TextEditingController();

  Rx<SignUpDoctorModel> signUpDoctorModelObj = SignUpDoctorModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    emailInputController.dispose();
    passwordInputController.dispose();
  }
}
