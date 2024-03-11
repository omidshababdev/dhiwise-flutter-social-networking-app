// ignore_for_file: must_be_immutable

part of 'daily_new_tab_container_bloc.dart';

/// Represents the state of DailyNewTabContainer in the application.
class DailyNewTabContainerState extends Equatable {
  DailyNewTabContainerState({
    this.searchController,
    this.dailyNewTabContainerModelObj,
  });

  TextEditingController? searchController;

  DailyNewTabContainerModel? dailyNewTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        dailyNewTabContainerModelObj,
      ];

  DailyNewTabContainerState copyWith({
    TextEditingController? searchController,
    DailyNewTabContainerModel? dailyNewTabContainerModelObj,
  }) {
    return DailyNewTabContainerState(
      searchController: searchController ?? this.searchController,
      dailyNewTabContainerModelObj:
          dailyNewTabContainerModelObj ?? this.dailyNewTabContainerModelObj,
    );
  }
}
