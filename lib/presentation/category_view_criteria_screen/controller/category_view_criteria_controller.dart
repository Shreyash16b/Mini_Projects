import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/presentation/category_view_criteria_screen/models/category_view_criteria_model.dart';

/// A controller class for the CategoryViewCriteriaScreen.
///
/// This class manages the state of the CategoryViewCriteriaScreen, including the
/// current categoryViewCriteriaModelObj
class CategoryViewCriteriaController extends GetxController {
  Rx<CategoryViewCriteriaModel> categoryViewCriteriaModelObj =
      CategoryViewCriteriaModel().obs;
}
