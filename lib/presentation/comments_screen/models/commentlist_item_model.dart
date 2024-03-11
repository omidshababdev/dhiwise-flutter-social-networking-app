import '../../../core/app_export.dart';

/// This class is used in the [commentlist_item_widget] screen.
class CommentlistItemModel {
  CommentlistItemModel({
    this.rizalReynaldhi,
    this.duration,
    this.mostPeopleNever,
    this.reply,
    this.id,
  }) {
    rizalReynaldhi = rizalReynaldhi ?? "Rizal Reynaldhi";
    duration = duration ?? "35 minutes ago";
    mostPeopleNever = mostPeopleNever ??
        "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ";
    reply = reply ?? "Reply";
    id = id ?? "";
  }

  String? rizalReynaldhi;

  String? duration;

  String? mostPeopleNever;

  String? reply;

  String? id;
}
