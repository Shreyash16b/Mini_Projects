import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/sign_up_form_screen/models/sign_up_form_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpFormScreen.
///
/// This class manages the state of the SignUpFormScreen, including the
/// current signUpFormModelObj
class SignUpFormController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpFormModel> signUpFormModelObj = SignUpFormModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
