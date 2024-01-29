import '../controller/category_view_sort_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryViewSortScreen.
///
/// This class ensures that the CategoryViewSortController is created when the
/// CategoryViewSortScreen is first loaded.
class CategoryViewSortBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryViewSortController());
  }
}
