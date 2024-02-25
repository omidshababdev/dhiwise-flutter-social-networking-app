import '../../../core/app_export.dart';

/// This class is used in the [friendlist_item_widget] screen.
class FriendlistItemModel {
  FriendlistItemModel({
    this.kevinAllsrub,
    this.kevinAllsrub1,
    this.yourEFriendsOn,
    this.checkmark,
    this.id,
  }) {
    kevinAllsrub = kevinAllsrub ?? ImageConstant.imgEllipse5;
    kevinAllsrub1 = kevinAllsrub1 ?? "Kevin Allsrub";
    yourEFriendsOn = yourEFriendsOn ?? "Your’e friends on twitter";
    checkmark = checkmark ?? ImageConstant.imgCheckmark;
    id = id ?? "";
  }

  String? kevinAllsrub;

  String? kevinAllsrub1;

  String? yourEFriendsOn;

  String? checkmark;

  String? id;
}
