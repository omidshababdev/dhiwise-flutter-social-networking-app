import '../../../core/app_export.dart';

/// This class is used in the [conversions_item_widget] screen.
class ConversionsItemModel {
  ConversionsItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
