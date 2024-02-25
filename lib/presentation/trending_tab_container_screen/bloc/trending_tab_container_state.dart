// ignore_for_file: must_be_immutable

part of 'trending_tab_container_bloc.dart';

/// Represents the state of TrendingTabContainer in the application.
class TrendingTabContainerState extends Equatable {
  TrendingTabContainerState({
    this.searchController,
    this.trendingTabContainerModelObj,
  });

  TextEditingController? searchController;

  TrendingTabContainerModel? trendingTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        trendingTabContainerModelObj,
      ];

  TrendingTabContainerState copyWith({
    TextEditingController? searchController,
    TrendingTabContainerModel? trendingTabContainerModelObj,
  }) {
    return TrendingTabContainerState(
      searchController: searchController ?? this.searchController,
      trendingTabContainerModelObj:
          trendingTabContainerModelObj ?? this.trendingTabContainerModelObj,
    );
  }
}
