import '../controller/category_view_criteria_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoryViewCriteriaScreen.
///
/// This class ensures that the CategoryViewCriteriaController is created when the
/// CategoryViewCriteriaScreen is first loaded.
class CategoryViewCriteriaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryViewCriteriaController());
  }
}
