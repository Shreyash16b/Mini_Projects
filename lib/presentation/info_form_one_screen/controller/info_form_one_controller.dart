import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/info_form_one_screen/models/info_form_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InfoFormOneScreen.
///
/// This class manages the state of the InfoFormOneScreen, including the
/// current infoFormOneModelObj
class InfoFormOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController heightCmsEditTextController = TextEditingController();

  TextEditingController weightKgEditTextController = TextEditingController();

  Rx<InfoFormOneModel> infoFormOneModelObj = InfoFormOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    heightCmsEditTextController.dispose();
    weightKgEditTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in infoFormOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    infoFormOneModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in infoFormOneModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    infoFormOneModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in infoFormOneModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    infoFormOneModelObj.value.dropdownItemList2.refresh();
  }
}
