import '../../../core/app_export.dart';

/// This class is used in the [storieslist_item_widget] screen.
class StorieslistItemModel {
  StorieslistItemModel({
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
