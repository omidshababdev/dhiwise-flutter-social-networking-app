// ignore_for_file: must_be_immutable

part of 'friends_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Friends widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FriendsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Friends widget is first created.
class FriendsInitialEvent extends FriendsEvent {
  @override
  List<Object?> get props => [];
}
