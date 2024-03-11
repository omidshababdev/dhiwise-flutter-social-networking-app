// ignore_for_file: must_be_immutable

part of 'detailed_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailedProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailedProfileEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DetailedProfile widget is first created.
class DetailedProfileInitialEvent extends DetailedProfileEvent {
  @override
  List<Object?> get props => [];
}
