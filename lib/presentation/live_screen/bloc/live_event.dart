// ignore_for_file: must_be_immutable

part of 'live_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Live widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Live widget is first created.
class LiveInitialEvent extends LiveEvent {
  @override
  List<Object?> get props => [];
}
