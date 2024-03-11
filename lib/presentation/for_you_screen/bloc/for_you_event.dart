// ignore_for_file: must_be_immutable

part of 'for_you_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForYou widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForYouEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ForYou widget is first created.
class ForYouInitialEvent extends ForYouEvent {
  @override
  List<Object?> get props => [];
}
