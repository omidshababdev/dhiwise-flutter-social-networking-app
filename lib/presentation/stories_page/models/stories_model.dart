// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'storieslist_item_model.dart';
import 'eventslist_item_model.dart';

/// This class defines the variables used in the [stories_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesModel extends Equatable {
  StoriesModel({
    this.storieslistItemList = const [],
    this.eventslistItemList = const [],
  }) {}

  List<StorieslistItemModel> storieslistItemList;

  List<EventslistItemModel> eventslistItemList;

  StoriesModel copyWith({
    List<StorieslistItemModel>? storieslistItemList,
    List<EventslistItemModel>? eventslistItemList,
  }) {
    return StoriesModel(
      storieslistItemList: storieslistItemList ?? this.storieslistItemList,
      eventslistItemList: eventslistItemList ?? this.eventslistItemList,
    );
  }

  @override
  List<Object?> get props => [storieslistItemList, eventslistItemList];
}
