// /// This class is used in the [doctorreviews_item_widget] screen.
// class DoctorreviewsItemModel {
//   DoctorreviewsItemModel({this.id}) {
//     id = id ?? Rx("");
//   }

//   Rx<String>? id;

//   Rx(String s) {}
// }

// class Rx {}
class DoctorreviewsItemModel {
  DoctorreviewsItemModel({String? id}) : id = Rx(id ?? "");

  late Rx<String> id;
}

class Rx<T> {
  final T value;

  Rx(this.value);
}
