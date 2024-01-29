import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/doctor_hospital_detail_screen/models/doctor_hospital_detail_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DoctorHospitalDetailScreen.
///
/// This class manages the state of the DoctorHospitalDetailScreen, including the
/// current doctorHospitalDetailModelObj
class DoctorHospitalDetailController extends GetxController {
  TextEditingController healthELogoController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  Rx<DoctorHospitalDetailModel> doctorHospitalDetailModelObj =
      DoctorHospitalDetailModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    healthELogoController.dispose();
    cityController.dispose();
    addressController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in doctorHospitalDetailModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    doctorHospitalDetailModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in doctorHospitalDetailModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    doctorHospitalDetailModelObj.value.dropdownItemList1.refresh();
  }
}
