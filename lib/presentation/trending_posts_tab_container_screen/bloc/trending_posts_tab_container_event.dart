// ignore_for_file: must_be_immutable

part of 'trending_posts_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingPostsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingPostsTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TrendingPostsTabContainer widget is first created.
class TrendingPostsTabContainerInitialEvent
    extends TrendingPostsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
