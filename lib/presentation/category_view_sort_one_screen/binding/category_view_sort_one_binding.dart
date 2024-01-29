import '../controller/category_view_sort_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryViewSortOneScreen.
///
/// This class ensures that the CategoryViewSortOneController is created when the
/// CategoryViewSortOneScreen is first loaded.
class CategoryViewSortOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryViewSortOneController());
  }
}
