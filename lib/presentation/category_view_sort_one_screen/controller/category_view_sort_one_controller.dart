import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/category_view_sort_one_screen/models/category_view_sort_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CategoryViewSortOneScreen.
///
/// This class manages the state of the CategoryViewSortOneScreen, including the
/// current categoryViewSortOneModelObj
class CategoryViewSortOneController extends GetxController {
  TextEditingController degreeController = TextEditingController();

  Rx<CategoryViewSortOneModel> categoryViewSortOneModelObj =
      CategoryViewSortOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    degreeController.dispose();
  }
}
