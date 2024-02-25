// ignore_for_file: must_be_immutable

part of 'stories_container_bloc.dart';

/// Represents the state of StoriesContainer in the application.
class StoriesContainerState extends Equatable {
  StoriesContainerState({this.storiesContainerModelObj});

  StoriesContainerModel? storiesContainerModelObj;

  @override
  List<Object?> get props => [
        storiesContainerModelObj,
      ];

  StoriesContainerState copyWith(
      {StoriesContainerModel? storiesContainerModelObj}) {
    return StoriesContainerState(
      storiesContainerModelObj:
          storiesContainerModelObj ?? this.storiesContainerModelObj,
    );
  }
}
