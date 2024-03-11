// ignore_for_file: must_be_immutable

part of 'daily_new_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DailyNewTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DailyNewTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DailyNewTabContainer widget is first created.
class DailyNewTabContainerInitialEvent extends DailyNewTabContainerEvent {
  @override
  List<Object?> get props => [];
}
