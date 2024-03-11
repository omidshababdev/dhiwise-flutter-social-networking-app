// ignore_for_file: must_be_immutable

part of 'trending_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TrendingTabContainer widget is first created.
class TrendingTabContainerInitialEvent extends TrendingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
