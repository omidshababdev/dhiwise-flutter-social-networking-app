import '../../../core/app_export.dart';

/// This class is used in the [profilelist_item_widget] screen.
class ProfilelistItemModel {
  ProfilelistItemModel({
    this.rosalia,
    this.duration,
    this.mostPeopleNever,
    this.zipcode,
    this.eightHundred,
    this.id,
  }) {
    rosalia = rosalia ?? "Rosalia";
    duration = duration ?? "35 minutes ago";
    mostPeopleNever = mostPeopleNever ??
        "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ";
    zipcode = zipcode ?? "2200";
    eightHundred = eightHundred ?? "800";
    id = id ?? "";
  }

  String? rosalia;

  String? duration;

  String? mostPeopleNever;

  String? zipcode;

  String? eightHundred;

  String? id;
}
