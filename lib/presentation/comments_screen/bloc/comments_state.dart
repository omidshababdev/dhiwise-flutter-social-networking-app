// ignore_for_file: must_be_immutable

part of 'comments_bloc.dart';

/// Represents the state of Comments in the application.
class CommentsState extends Equatable {
  CommentsState({
    this.commentController,
    this.commentsModelObj,
  });

  TextEditingController? commentController;

  CommentsModel? commentsModelObj;

  @override
  List<Object?> get props => [
        commentController,
        commentsModelObj,
      ];

  CommentsState copyWith({
    TextEditingController? commentController,
    CommentsModel? commentsModelObj,
  }) {
    return CommentsState(
      commentController: commentController ?? this.commentController,
      commentsModelObj: commentsModelObj ?? this.commentsModelObj,
    );
  }
}
