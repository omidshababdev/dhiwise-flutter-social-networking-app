import '../../../core/app_export.dart';

/// This class is used in the [messageslist_item_widget] screen.
class MessageslistItemModel {
  MessageslistItemModel({
    this.richardAlves,
    this.heyBroWhereAre,
    this.time,
    this.id,
  }) {
    richardAlves = richardAlves ?? "Richard Alves";
    heyBroWhereAre = heyBroWhereAre ?? "Hey bro, where are you?";
    time = time ?? "10:00 AM";
    id = id ?? "";
  }

  String? richardAlves;

  String? heyBroWhereAre;

  String? time;

  String? id;
}
