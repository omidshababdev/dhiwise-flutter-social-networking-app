// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'stories_item_model.dart';

/// This class defines the variables used in the [trending_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingTabContainerModel extends Equatable {
  TrendingTabContainerModel({this.storiesItemList = const []}) {}

  List<StoriesItemModel> storiesItemList;

  TrendingTabContainerModel copyWith(
      {List<StoriesItemModel>? storiesItemList}) {
    return TrendingTabContainerModel(
      storiesItemList: storiesItemList ?? this.storiesItemList,
    );
  }

  @override
  List<Object?> get props => [storiesItemList];
}
