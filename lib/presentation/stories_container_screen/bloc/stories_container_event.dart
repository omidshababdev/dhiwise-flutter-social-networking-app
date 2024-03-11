// ignore_for_file: must_be_immutable

part of 'stories_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StoriesContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StoriesContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the StoriesContainer widget is first created.
class StoriesContainerInitialEvent extends StoriesContainerEvent {
  @override
  List<Object?> get props => [];
}
