import '../../../core/app_export.dart';

/// This class is used in the [fortysix_item_widget] screen.
class FortysixItemModel {
  FortysixItemModel({
    this.fortySix,
    this.id,
  }) {
    fortySix = fortySix ?? ImageConstant.img46;
    id = id ?? "";
  }

  String? fortySix;

  String? id;
}
