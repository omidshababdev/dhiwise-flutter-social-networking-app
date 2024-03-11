import '../../../core/app_export.dart';

/// This class is used in the [notificationslist_item_widget] screen.
class NotificationslistItemModel {
  NotificationslistItemModel({
    this.image,
    this.kevinHasFollowed,
    this.duration,
    this.id,
  }) {
    image = image ?? ImageConstant.imgEllipse22;
    kevinHasFollowed = kevinHasFollowed ?? "Kevin has followed you";
    duration = duration ?? "1 hour ago";
    id = id ?? "";
  }

  String? image;

  String? kevinHasFollowed;

  String? duration;

  String? id;
}
