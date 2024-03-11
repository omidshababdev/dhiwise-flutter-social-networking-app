// ignore_for_file: must_be_immutable

part of 'comments_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Comments widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CommentsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Comments widget is first created.
class CommentsInitialEvent extends CommentsEvent {
  @override
  List<Object?> get props => [];
}
