import '../../../core/app_export.dart';

/// This class is used in the [stories1_item_widget] screen.
class Stories1ItemModel {
  Stories1ItemModel({
    this.roy,
    this.roy1,
    this.id,
  }) {
    roy = roy ?? ImageConstant.imgEllipse15;
    roy1 = roy1 ?? "Roy";
    id = id ?? "";
  }

  String? roy;

  String? roy1;

  String? id;
}
