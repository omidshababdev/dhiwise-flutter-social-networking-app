// ignore_for_file: must_be_immutable

part of 'messages_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Messages widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessagesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Messages widget is first created.
class MessagesInitialEvent extends MessagesEvent {
  @override
  List<Object?> get props => [];
}
