import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/category_view_sort_screen/models/category_view_sort_model.dart';

/// A controller class for the CategoryViewSortScreen.
///
/// This class manages the state of the CategoryViewSortScreen, including the
/// current categoryViewSortModelObj
class CategoryViewSortController extends GetxController {
  Rx<CategoryViewSortModel> categoryViewSortModelObj =
      CategoryViewSortModel().obs;
}
