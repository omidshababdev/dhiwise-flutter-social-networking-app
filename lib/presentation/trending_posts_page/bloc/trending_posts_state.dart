// ignore_for_file: must_be_immutable

part of 'trending_posts_bloc.dart';

/// Represents the state of TrendingPosts in the application.
class TrendingPostsState extends Equatable {
  TrendingPostsState({this.trendingPostsModelObj});

  TrendingPostsModel? trendingPostsModelObj;

  @override
  List<Object?> get props => [
        trendingPostsModelObj,
      ];

  TrendingPostsState copyWith({TrendingPostsModel? trendingPostsModelObj}) {
    return TrendingPostsState(
      trendingPostsModelObj:
          trendingPostsModelObj ?? this.trendingPostsModelObj,
    );
  }
}
