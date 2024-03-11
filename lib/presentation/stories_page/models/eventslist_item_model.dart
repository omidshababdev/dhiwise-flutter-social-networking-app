import '../../../core/app_export.dart';

/// This class is used in the [eventslist_item_widget] screen.
class EventslistItemModel {
  EventslistItemModel({
    this.lIVEWeTheFest,
    this.blueLoyalParty,
    this.lIVEWeTheFest1,
    this.price,
    this.blueLoyalParty1,
    this.price1,
    this.id,
  }) {
    lIVEWeTheFest = lIVEWeTheFest ?? ImageConstant.img19144x147;
    blueLoyalParty = blueLoyalParty ?? ImageConstant.img192;
    lIVEWeTheFest1 = lIVEWeTheFest1 ?? "LIVE - We The Fest";
    price = price ?? "19 : 00 | Forg Stadium";
    blueLoyalParty1 = blueLoyalParty1 ?? "Blue Loyal Party";
    price1 = price1 ?? "19 : 35 | Latuna Beach";
    id = id ?? "";
  }

  String? lIVEWeTheFest;

  String? blueLoyalParty;

  String? lIVEWeTheFest1;

  String? price;

  String? blueLoyalParty1;

  String? price1;

  String? id;
}
