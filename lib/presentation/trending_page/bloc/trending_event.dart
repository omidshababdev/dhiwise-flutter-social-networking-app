// ignore_for_file: must_be_immutable

part of 'trending_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Trending widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Trending widget is first created.
class TrendingInitialEvent extends TrendingEvent {
  @override
  List<Object?> get props => [];
}
