// ignore_for_file: must_be_immutable

part of 'trending_posts_tab_container_bloc.dart';

/// Represents the state of TrendingPostsTabContainer in the application.
class TrendingPostsTabContainerState extends Equatable {
  TrendingPostsTabContainerState({
    this.searchController,
    this.trendingPostsTabContainerModelObj,
  });

  TextEditingController? searchController;

  TrendingPostsTabContainerModel? trendingPostsTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        trendingPostsTabContainerModelObj,
      ];

  TrendingPostsTabContainerState copyWith({
    TextEditingController? searchController,
    TrendingPostsTabContainerModel? trendingPostsTabContainerModelObj,
  }) {
    return TrendingPostsTabContainerState(
      searchController: searchController ?? this.searchController,
      trendingPostsTabContainerModelObj: trendingPostsTabContainerModelObj ??
          this.trendingPostsTabContainerModelObj,
    );
  }
}
