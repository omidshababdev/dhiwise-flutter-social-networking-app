// ignore_for_file: must_be_immutable

part of 'live_bloc.dart';

/// Represents the state of Live in the application.
class LiveState extends Equatable {
  LiveState({
    this.commentController,
    this.liveModelObj,
  });

  TextEditingController? commentController;

  LiveModel? liveModelObj;

  @override
  List<Object?> get props => [
        commentController,
        liveModelObj,
      ];

  LiveState copyWith({
    TextEditingController? commentController,
    LiveModel? liveModelObj,
  }) {
    return LiveState(
      commentController: commentController ?? this.commentController,
      liveModelObj: liveModelObj ?? this.liveModelObj,
    );
  }
}
