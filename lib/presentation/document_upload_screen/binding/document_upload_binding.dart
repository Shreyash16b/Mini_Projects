import 'package:get/get.dart';

import '../controller/document_upload_controller.dart';

/// A binding class for the DocumentUploadScreen.
///
/// This class ensures that the DocumentUploadController is created when the
/// DocumentUploadScreen is first loaded.
class DocumentUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DocumentUploadController());
  }
}
