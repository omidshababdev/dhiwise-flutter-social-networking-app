// ignore_for_file: must_be_immutable

part of 'trending_posts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingPosts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingPostsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TrendingPosts widget is first created.
class TrendingPostsInitialEvent extends TrendingPostsEvent {
  @override
  List<Object?> get props => [];
}
