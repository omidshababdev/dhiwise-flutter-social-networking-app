import '../../../core/app_export.dart';

/// This class is used in the [recentsearches_item_widget] screen.
class RecentsearchesItemModel {
  RecentsearchesItemModel({
    this.kevinAllsrub,
    this.kevinAllsrub1,
    this.yourEFriendsOn,
    this.id,
  }) {
    kevinAllsrub = kevinAllsrub ?? ImageConstant.imgEllipse5;
    kevinAllsrub1 = kevinAllsrub1 ?? "Kevin Allsrub";
    yourEFriendsOn = yourEFriendsOn ?? "Your’e friends on twitter";
    id = id ?? "";
  }

  String? kevinAllsrub;

  String? kevinAllsrub1;

  String? yourEFriendsOn;

  String? id;
}
