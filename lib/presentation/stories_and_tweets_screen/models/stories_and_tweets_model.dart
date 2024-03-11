// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'livestories_item_model.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [stories_and_tweets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesAndTweetsModel extends Equatable {
  StoriesAndTweetsModel({
    this.livestoriesItemList = const [],
    this.frameItemList = const [],
  }) {}

  List<LivestoriesItemModel> livestoriesItemList;

  List<FrameItemModel> frameItemList;

  StoriesAndTweetsModel copyWith({
    List<LivestoriesItemModel>? livestoriesItemList,
    List<FrameItemModel>? frameItemList,
  }) {
    return StoriesAndTweetsModel(
      livestoriesItemList: livestoriesItemList ?? this.livestoriesItemList,
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [livestoriesItemList, frameItemList];
}
