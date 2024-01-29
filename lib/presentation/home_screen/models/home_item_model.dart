import '../../../core/app_export.dart';

/// This class is used in the [home_item_widget] screen.
class HomeItemModel {
  HomeItemModel({
    this.cardiologistImage,
    this.cardiologistText,
    this.id,
  }) {
    cardiologistImage =
        cardiologistImage ?? Rx(ImageConstant.imgTelevisionPrimary);
    cardiologistText = cardiologistText ?? Rx("Cardiologist");
    id = id ?? Rx("");
  }

  Rx<String>? cardiologistImage;

  Rx<String>? cardiologistText;

  Rx<String>? id;
}
