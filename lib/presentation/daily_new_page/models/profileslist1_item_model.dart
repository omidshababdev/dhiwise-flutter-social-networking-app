import '../../../core/app_export.dart';

/// This class is used in the [profileslist1_item_widget] screen.
class Profileslist1ItemModel {
  Profileslist1ItemModel({
    this.nineteen,
    this.agnessMonica,
    this.id,
  }) {
    nineteen = nineteen ?? ImageConstant.img19;
    agnessMonica = agnessMonica ?? "Agness Monica";
    id = id ?? "";
  }

  String? nineteen;

  String? agnessMonica;

  String? id;
}
