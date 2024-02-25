// ignore_for_file: must_be_immutable

part of 'stories_and_tweets_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///StoriesAndTweets widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class StoriesAndTweetsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the StoriesAndTweets widget is first created.
class StoriesAndTweetsInitialEvent extends StoriesAndTweetsEvent {
  @override
  List<Object?> get props => [];
}
