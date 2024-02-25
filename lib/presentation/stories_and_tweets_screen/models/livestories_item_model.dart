import '../../../core/app_export.dart';

/// This class is used in the [livestories_item_widget] screen.
class LivestoriesItemModel {
  LivestoriesItemModel({
    this.save,
    this.newPost,
    this.id,
  }) {
    save = save ?? ImageConstant.imgSave;
    newPost = newPost ?? "New Post";
    id = id ?? "";
  }

  String? save;

  String? newPost;

  String? id;
}
