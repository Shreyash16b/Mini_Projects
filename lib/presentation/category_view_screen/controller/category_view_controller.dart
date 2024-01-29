import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/category_view_screen/models/category_view_model.dart';

/// A controller class for the CategoryViewScreen.
///
/// This class manages the state of the CategoryViewScreen, including the
/// current categoryViewModelObj
class CategoryViewController extends GetxController {
  Rx<CategoryViewModel> categoryViewModelObj = CategoryViewModel().obs;
}
