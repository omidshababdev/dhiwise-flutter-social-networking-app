// ignore_for_file: must_be_immutable

part of 'daily_new_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DailyNew widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DailyNewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DailyNew widget is first created.
class DailyNewInitialEvent extends DailyNewEvent {
  @override
  List<Object?> get props => [];
}
