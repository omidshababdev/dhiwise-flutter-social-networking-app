import '../../../core/app_export.dart';

/// This class is used in the [ninetysevenlist_item_widget] screen.
class NinetysevenlistItemModel {
  NinetysevenlistItemModel({
    this.trash,
    this.id,
  }) {
    trash = trash ?? ImageConstant.imgTrashBlue500;
    id = id ?? "";
  }

  String? trash;

  String? id;
}
