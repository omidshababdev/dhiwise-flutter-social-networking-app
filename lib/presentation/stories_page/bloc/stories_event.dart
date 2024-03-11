// ignore_for_file: must_be_immutable

part of 'stories_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Stories widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StoriesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Stories widget is first created.
class StoriesInitialEvent extends StoriesEvent {
  @override
  List<Object?> get props => [];
}
