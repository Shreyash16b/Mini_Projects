import 'package:get/get.dart';

import '../controller/info_form_one_controller.dart';

/// A binding class for the InfoFormOneScreen.
///
/// This class ensures that the InfoFormOneController is created when the
/// InfoFormOneScreen is first loaded.
class InfoFormOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InfoFormOneController());
  }
}
