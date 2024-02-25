// ignore_for_file: must_be_immutable

part of 'stories_bloc.dart';

/// Represents the state of Stories in the application.
class StoriesState extends Equatable {
  StoriesState({
    this.searchController,
    this.storiesModelObj,
  });

  TextEditingController? searchController;

  StoriesModel? storiesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        storiesModelObj,
      ];

  StoriesState copyWith({
    TextEditingController? searchController,
    StoriesModel? storiesModelObj,
  }) {
    return StoriesState(
      searchController: searchController ?? this.searchController,
      storiesModelObj: storiesModelObj ?? this.storiesModelObj,
    );
  }
}
