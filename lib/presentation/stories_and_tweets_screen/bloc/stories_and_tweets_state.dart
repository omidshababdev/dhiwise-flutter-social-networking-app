// ignore_for_file: must_be_immutable

part of 'stories_and_tweets_bloc.dart';

/// Represents the state of StoriesAndTweets in the application.
class StoriesAndTweetsState extends Equatable {
  StoriesAndTweetsState({
    this.searchController,
    this.storiesAndTweetsModelObj,
  });

  TextEditingController? searchController;

  StoriesAndTweetsModel? storiesAndTweetsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        storiesAndTweetsModelObj,
      ];

  StoriesAndTweetsState copyWith({
    TextEditingController? searchController,
    StoriesAndTweetsModel? storiesAndTweetsModelObj,
  }) {
    return StoriesAndTweetsState(
      searchController: searchController ?? this.searchController,
      storiesAndTweetsModelObj:
          storiesAndTweetsModelObj ?? this.storiesAndTweetsModelObj,
    );
  }
}
