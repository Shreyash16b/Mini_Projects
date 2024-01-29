import '../controller/category_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryViewScreen.
///
/// This class ensures that the CategoryViewController is created when the
/// CategoryViewScreen is first loaded.
class CategoryViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryViewController());
  }
}
