// ignore_for_file: must_be_immutable

part of 'trending_bloc.dart';

/// Represents the state of Trending in the application.
class TrendingState extends Equatable {
  TrendingState({this.trendingModelObj});

  TrendingModel? trendingModelObj;

  @override
  List<Object?> get props => [
        trendingModelObj,
      ];

  TrendingState copyWith({TrendingModel? trendingModelObj}) {
    return TrendingState(
      trendingModelObj: trendingModelObj ?? this.trendingModelObj,
    );
  }
}
