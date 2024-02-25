import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.albertOConnor,
    this.duration,
    this.introduceIAmA,
    this.zipcode,
    this.eightHundred,
    this.albertOConnor1,
    this.duration1,
    this.introduceIAmA1,
    this.id,
  }) {
    albertOConnor = albertOConnor ?? "Albert O’connor";
    duration = duration ?? "4  hours ago";
    introduceIAmA = introduceIAmA ??
        "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.";
    zipcode = zipcode ?? "2200";
    eightHundred = eightHundred ?? "800";
    albertOConnor1 = albertOConnor1 ?? "Albert O’connor";
    duration1 = duration1 ?? "4  hours ago";
    introduceIAmA1 = introduceIAmA1 ??
        "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.";
    id = id ?? "";
  }

  String? albertOConnor;

  String? duration;

  String? introduceIAmA;

  String? zipcode;

  String? eightHundred;

  String? albertOConnor1;

  String? duration1;

  String? introduceIAmA1;

  String? id;
}
