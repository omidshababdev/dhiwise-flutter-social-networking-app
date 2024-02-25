import '../../../core/app_export.dart';

/// This class is used in the [trendinglist_item_widget] screen.
class TrendinglistItemModel {
  TrendinglistItemModel({
    this.image,
    this.rickOnad,
    this.time,
    this.thisIsTheMoment,
    this.huge,
    this.fotography,
    this.nature,
    this.id,
  }) {
    image = image ?? ImageConstant.img40221x382;
    rickOnad = rickOnad ?? "Rick Onad";
    time = time ?? "40 min ago";
    thisIsTheMoment = thisIsTheMoment ??
        "This is the moment where i take a photo of a couple hugging in a beautiful rice field.";
    huge = huge ?? "#huge";
    fotography = fotography ?? "#fotography";
    nature = nature ?? "#nature";
    id = id ?? "";
  }

  String? image;

  String? rickOnad;

  String? time;

  String? thisIsTheMoment;

  String? huge;

  String? fotography;

  String? nature;

  String? id;
}
