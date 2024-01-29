import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/document_upload_screen/models/document_upload_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DocumentUploadScreen.
///
/// This class manages the state of the DocumentUploadScreen, including the
/// current documentUploadModelObj
class DocumentUploadController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<DocumentUploadModel> documentUploadModelObj = DocumentUploadModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in documentUploadModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    documentUploadModelObj.value.dropdownItemList.refresh();
  }
}
